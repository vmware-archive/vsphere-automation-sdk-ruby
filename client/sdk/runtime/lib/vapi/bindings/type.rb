#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

require 'date'
require 'uri'
require 'base64'
require 'singleton'

module VAPI::Bindings

    # @abstract Base representation of an IDL type for the Ruby language bindings.
    class BindingType

        # Constructs a new instance.
        def initialize()
        end

        # Applies a visitor to this BindingType.
        #
        # @param visitor [BindingTypeVisitor] visitor operating on the BindingType
        def accept(visitor)
            visitor.visit(self)
        end

        #TODO: old  - this stuff should go away, as the validation belongs elsewhere
        def valid?(type, value, type_name = nil)
            if value.is_a? type
                return true
            elsif !!value == value && type == TrueClass #check for boolean
                return true
            else
                raise "Error: #{type_name || type.name} was excepted. #{value.class.name} was recieved"
            end
        end
    end

    # @abstract Base representation of an IDL primitive type for the Ruby language bindings.
    class PrimitiveType < BindingType
    end

    # Representation of an IDL Void type.
    class VoidType < PrimitiveType
        include Singleton

        def to_vapi(value=nil)
            VAPI::Data::VoidValue.new(value)
        end
    end

    # Representation of an IDL Boolean type.
    class BooleanType < PrimitiveType
        include Singleton

        def to_vapi(value)
            VAPI::Data::BooleanValue.new(value)
        end
    end

    # Representation of an IDL Long type.
    class IntegerType < PrimitiveType
        include Singleton

        def to_vapi(value)
            VAPI::Data::IntegerValue.new(value)
        end
    end

    # Representation of an IDL Double type.
    class DoubleType < PrimitiveType
        include Singleton

        def to_vapi(value)
            VAPI::Data::DoubleValue.new(value)
        end
    end

    # Representation of an IDL String type.
    class StringType < PrimitiveType
        include Singleton

        def to_vapi(value)
            VAPI::Data::StringValue.new(value)
        end
    end

    # Representation of an IDL ID type.
    class IdType < PrimitiveType
        attr_accessor :resource_types, :resource_type_field_name

        # Constructs a new instance.
        def initialize(resource_types=nil, resource_type_field_name=nil)
            self.resource_types = resource_types
            self.resource_type_field_name = resource_type_field_name
        end

        def to_vapi(value)
            VAPI::Data::StringValue.new(value)
        end
    end

    # Representation of an IDL BLob type.
    class SecretType < PrimitiveType
        include Singleton

        def to_vapi(value)
            #secret value should be a string as in python
            VAPI::Data::SecretValue.new(value) #if valid?(String, value, "Secret String")
        end
    end

    # Representation of an IDL URI type.
    class URIType < PrimitiveType
        include Singleton

        def to_vapi(value)
            #value should be a URI type
            #we will store this as a string in the URIValue
            VAPI::Data::URIValue.new(value.to_s) #if valid?(URI, value)
        end

        def to_ruby(data_value)
            URI.parse(data_value.value)
        end
    end

    # Representation of an IDL DateTime Type.
    class DateTimeType < PrimitiveType
        include Singleton

        @@regex = Regexp.compile '(\\d{4})-(\\d{2})-(\\d{2})T(\\d{2}):(\\d{2}):(\\d{2}).(\\d{3})Z'

        def to_vapi(value)
            #the vAPI runtime converts datetime.datime objects to strings that
            #follow a subset of the ISO 8601 format
            #YYYY-MM-DDThh:mm:ss.sssZ (e.g. 1878-03-03T19:20:30.451Z)
            #note that the format vAPI uses causes the offset
            #to be lost. this means the echo_date values won't be exactly
            #equal
            VAPI::Data::DateTimeValue.new(value.strftime('%FT%T.%LZ')) if valid?(DateTime, value)
        end

        def to_ruby(data_value)
            #NO: DateTime.parse(data_value)
            matches = @@regex.match(data_value.value)
            if matches.size == 8
                seconds = "#{matches[6]}.#{matches[7]}"
                return DateTime.new(
                    matches[1].to_i, # year
                    matches[2].to_i, # month
                    matches[3].to_i, # day
                    matches[4].to_i, # hour
                    matches[5].to_i, # minute
                    seconds.to_f)
            else
                raise "DateTime parsing problem"
            end
        end
    end

    # Representation of an IDL BLob type.
    class BlobType < PrimitiveType
        include Singleton

        def to_vapi(value)
            VAPI::Data::BlobValue.new(Base64.encode64(value.to_s)) #NO: if valid?(Fixnum, value, "Binary")
        end

        def to_ruby(data_value)
            Base64.decode64(data_value.value)
        end
    end

    # Representation of an IDL Opaque type.
    class OpaqueType < PrimitiveType
        include Singleton

        #TODO: this needs more work...
        def to_vapi(value)
            #VAPI::Data::OpaqueValue.new(value)
        end

        def to_ruby(data_value)
            data_value
        end
    end

    # Representation of an IDL Exception type.
    class AnyErrorType < PrimitiveType
        include Singleton

        def to_vapi(value)
            #VAPI.log.debug "VERBOSE: AnyErrorType.to_vapi #{value}"
            value.class.binding_type.to_vapi(value)
        end
    end


    # @abstract Base representation of an IDL generic type for the Ruby language bindings.
    class GenericType < BindingType
        attr_accessor :element_type

        # Constructs a new instance.
        # @param element_type [BindingType]
        #        the binding type of the argument for the generic type
        def initialize(element_type)
            @element_type = check_arg_type(element_type, 'element_type')
        end

        protected

        def check_arg_type(arg, arg_name)
            unless arg.is_a? BindingType
                #TODO: create a specific ex type or use VapiException
                raise 'Expected an instance of BindingType as ' +
                    arg_name + ' parameter of ' + self.class.name + ' constructor, ' +
                    'but got ' + arg.class.name + ' instead'
            end
            arg
        end
    end

    # Representation of an IDL Optional type.
    class OptionalType < GenericType

        # Constructs a new instance.
        # @param element_type [BindingType]
        #        the binding type of the argument for the Optional<T>
        def initialize(element_type)
            super(element_type)
        end

        def to_vapi(value)
            value.nil? ? VAPI::Data::OptionalValue.new(nil) :
                VAPI::Data::OptionalValue.new(TypeConverter.convert_to_vapi(value, element_type))
        end
    end

    # Representation of an IDL List type.
    class ListType < GenericType

        # Constructs a new instance.
        # @param element_type [BindingType]
        #        the binding type of the argument for the List<T>
        def initialize(element_type)
            super(element_type)
        end

        def to_vapi(value)
            data_value = VAPI::Data::ListValue.new if valid?(Array, value)
            value.each do |element|
                data_value.add(TypeConverter.convert_to_vapi(element, element_type))
            end
            data_value
        end
    end

    # Representation of an IDL Set type.
    class SetType < GenericType

        # Constructs a new instance.
        # @param element_type [BindingType]
        #        the binding type of the argument for the Set<T>
        def initialize(element_type)
            super(element_type)
        end

        def to_vapi(value)
            data_value = VAPI::Data::ListValue.new if valid?(Set, value)
            value.each do |element|
                data_value.add(TypeConverter.convert_to_vapi(element, element_type))
            end
            data_value
        end
    end

    # Representation of an IDL Map type.
    class MapType < GenericType
        attr_accessor :key_type

        # Constructs a new instance.
        # @param key_type [BindingType]
        #        the binding type of the key argument for the Map<K,V>
        # @param value_type [BindingType]
        #        the binding type of the value argument for the Map<K,V>
        def initialize(key_type, value_type)
            super(value_type)
            @key_type = check_arg_type(key_type, 'key_type')
        end

        alias_method :value_type, :element_type

        # Gets the key name.
        # @return [String] the key name
        def key_name
            MapEntryType::KEY_NAME
        end

        # Gets the value name.
        # @return [String] the value name
        def value_name
            MapEntryType::VALUE_NAME
        end

        def to_vapi(value)
            data_value = VAPI::Data::ListValue.new if valid?(Hash, value)
            map_entry_type = MapEntryType.new(self.key_type, self.value_type)
            value.each do |key, value|
                map_entry = VAPI::Data::StructValue.new(
                    map_entry_type.name,
                    map_entry_type.field_names)
                key_value = TypeConverter.convert_to_vapi(key, key_type)
                value_value = TypeConverter.convert_to_vapi(value, value_type)
                map_entry.set_field(MapEntryType::KEY_NAME, key_value)
                map_entry.set_field(MapEntryType::VALUE_NAME, value_value)
                data_value.add(map_entry)
            end
            data_value
        end
    end


    # @abstract Representation of a resolvable (non primitive) IDL type in Ruby Binding.
    # @!attribute [r] name
    #   @return [String] Name of the structure
    # @!attribute [r] binding_class
    #   @return [Class] Reference to the native class corresponding to this structure
    class ResolvableType < BindingType
        attr_reader :name

        # Constructs a new instance.
        # @param name [String]
        #        the fully qualified canonical name of a binding type
        # @param binding_class [Class]
        #        the Ruby class of a binding type (default nil), when not
        #        set the value is dynamically resolved
        def initialize(name, binding_class=nil)
            super()
            unless name.is_a? String
                raise TypeError("#{self.class.name} name must be a string")
            end
            @name = name
            @binding_class = binding_class
        end

        def binding_class
            @binding_class ||= resolve
        end

        # resolve it
        def resolve
            begin
                if self.name.index '.'
                    return VAPI::Util.class_from_canonical_name(self.name)
                elsif self.name.index ':'
                    return VAPI::Util.class_from_string(self.name)
                end
            rescue Exception => e
                VAPI.log.error "failed to dynamically resolve binding type: #{self.name}"
                VAPI.log.error e
                return nil
            end
        end
    end

    # Representation of an IDL Reference type.
    class ReferenceType < ResolvableType

        # Constructs a new instance.
        # @param name [String]
        #        the fully qualified canonical name of a binding type
        def initialize(name)
            super(name)
        end

        def to_vapi(value)
            if value.nil?
                value
            elsif value.kind_of? VapiEnum
                value.class.binding_type.to_vapi(value)
            elsif value.kind_of? VapiStruct
                value.class.binding_type.to_vapi(value)
            elsif value.kind_of? VapiError
                value.class.binding_type.to_vapi(value)
            else
                raise "#{self.class.name}.to_vapi: unexpected type for value: #{value}"
            end
        end
    end


    # Representation of an Enumeration IDL type.
    class EnumType < ResolvableType

        # Constructs a new instance.
        # @param name [String]
        #        the fully qualified canonical name of a binding type
        # @param binding_class [Class]
        #        the Ruby class of a binding type (default nil), when not
        #        set the value is dynamically resolved
        def initialize(name, binding_class=nil)
            super(name, binding_class)
        end

        def to_vapi(value)
            if value.kind_of? VapiEnum
                VAPI::Data::StringValue.new(value.to_s)
            elsif value.is_a? String
                VAPI::Data::StringValue.new(value)
            else
                raise 'unexpected type'
            end
        end
    end

    # Representation of a Structure IDL type in Ruby Binding.
    # @!attribute [r] is_model
    #   @return [Boolean] true if the structure is marked as Model, otherwise false
    # @!attribute [r] model_keys
    #   @return [Array<String>] List of model keys for the structure if it is marked as Model
    class StructType < ResolvableType
        attr_accessor :field_names, :fields, :is_model, :model_keys

        # Constructs a new instance.
        # @param name [String]
        #        the fully qualified canonical name of a binding type
        # @param binding_class [Class]
        #        the Ruby class of a binding type (default nil), when not
        #        set the value is dynamically resolved
        # @param is_model [Boolean]
        #        true if the structure is marked as Model, otherwise false
        # @param model_keys [Array<String>]
        #        List of model keys for the structure if it is marked as Model
        def initialize(name, fields, binding_class=nil, is_model=false, model_keys=nil)
            super(name, binding_class)

            if not fields.is_a? Hash
                raise TypeError('Expected a hash instance in StructType')
            end
            fields.each { |field_name, binding_type|
                if not binding_type.is_a? BindingType
                    raise TypeError('Type of the field %s in StructType should ' +
                        'be a BindingType' % field_name)
                end
            }
            self.fields = fields
            self.field_names = fields.keys
            self.is_model = is_model
            self.model_keys = model_keys
        end

        def get_field(field_name)
            fields[field_name]
        end

        def to_vapi(value)
            data_value = VAPI::Data::StructValue.new(self.name)
            self.field_names.each do |field_name|
                if value.kind_of? VapiStruct
                    #VAPI.log.debug "VERBOSE: StructType.to_vapi() working on a VapiStruct ..."
                    begin
                        vapi_obj = TypeConverter.convert_to_vapi(value.send(field_name), get_field(field_name))
                    rescue NoMethodError
                        method_name = "#{field_name}_" # escape possible keywords
                        vapi_obj = TypeConverter.convert_to_vapi(value.send(method_name), get_field(field_name))
                    end
                elsif value.is_a? Hash
                    #VAPI.log.debug "VERBOSE: StructType.to_vapi() working on a Hash ..."
                    #VAPI.log.debug "VERBOSE: StructType.to_vapi() #{field_name} = #{get_field(field_name).inspect}"
                    vapi_obj = TypeConverter.convert_to_vapi(value[field_name], get_field(field_name))
                    #VAPI.log.debug "VERBOSE: StructType.to_vapi() #{field_name} = #{vapi_obj}"
                else
                    VAPI.log.error "StructType.to_vapi() got an unexpectd value: #{value}"
                    vapi_obj = nil
                end
                unless get_field(field_name).class == OptionalType && vapi_obj.nil?
                    data_value.set_field(field_name, vapi_obj)
                end
            end
            data_value
        end
    end

    # A special StructType that is used to encapsulate operation input parameters.
    class OperationInputType < StructType

        # Structure name for the StructValues that represent
        # operation input in the runtime.
        OPERATION_INPUT = 'operation-input'

        # Constructs a new instance.
        def initialize(params={})
            super(OPERATION_INPUT, params)
        end
    end

    # A special StructType that is used to encapsulate map entries.
    class MapEntryType < StructType

        # Structure name for the StructValues that represent
        # map entries in the runtime.
        MAP_ENTRY = 'map-entry'

        # Field name for the implicit map-entry key field.
        KEY_NAME = 'key'
        #
        # Field name for the implicit map-entry value field.
        VALUE_NAME = 'value'

        # Constructs a new instance.
        def initialize(key_type, value_type)
            super(MAP_ENTRY, {
                KEY_NAME => key_type,
                VALUE_NAME => value_type,
            })
        end
    end

    # Representation of Error IDL type in Ruby Binding.
    class ErrorType < StructType

        # Constructs a new instance.
        # @param name [String]
        #        the fully qualified canonical name of a binding type
        # @param binding_class [Class]
        #        the Ruby class of a binding type (default nil), when not
        #        set the value is dynamically resolved
        def initialize(name, fields, binding_class=nil)
            super(name, fields, binding_class)
        end

        def to_vapi(value)
            data_value = VAPI::Data::ErrorValue.new(self.name)
            self.field_names.each do |field_name|
                if value.kind_of? VapiError
                    #VAPI.log.debug "VERBOSE: ErrorType.to_vapi() working on a VapiStruct ..."
                    begin
                        vapi_obj = TypeConverter.convert_to_vapi(value.send(field_name), get_field(field_name))
                    rescue NoMethodError
                        method_name = "#{field_name}_" # escape possible keywords
                        vapi_obj = TypeConverter.convert_to_vapi(value.send(method_name), get_field(field_name))
                    end
                elsif value.is_a? Hash
                    #VAPI.log.debug "VERBOSE: ErrorType.to_vapi() working on a Hash ..."
                    #VAPI.log.debug "VERBOSE: ErrorType.to_vapi() #{field_name} = #{get_field(field_name).inspect}"
                    vapi_obj = TypeConverter.convert_to_vapi(value[field_name], get_field(field_name))
                    #VAPI.log.debug "VERBOSE: ErrorType.to_vapi() #{field_name} = #{vapi_obj}"
                else
                    VAPI.log.error "ErrorType.to_vapi() got an unexpectd value: #{value}"
                    vapi_obj = nil
                end
                unless get_field(field_name).class == OptionalType && vapi_obj.nil?
                    data_value.set_field(field_name, vapi_obj)
                end
            end
            data_value
        end
    end

    # Representation of an IDL DynamicStructure type.
    # !@attribute [r] has_fields_of_type
    #     @return [ReferenceType] list of reference types whose fields need to be
    #     present in the StructValue for this DynamicStruct type
    class DynamicStructType < StructType

        NAME = 'vmware.vapi.dynamic_struct'

        attr_accessor :has_fields_of_type

        # Constructs a new instance.
        # @param has_fields_of_type [ReferenceType]
        #        a reference to the type defined by @HasFieldsOf (default nil)
        def initialize(has_fields_of_type=nil)
            super(NAME, {}, VapiStruct)

            self.has_fields_of_type = has_fields_of_type
        end

        def to_vapi(value)
            if value.instance_of? VapiStruct
                return value.struct_value
            elsif value.instance_of? VapiError
                return value.error_value
            elsif value.is_a? VapiStruct
                return value.struct_type.to_vapi(value)
            elsif value.instance_of? VAPI::Data::StructValue
                return value
            else
                raise "#{self.class.name}.to_vapi: unexpected type for value: #{value}"
=begin
                #TODO: port this concept to ruby
                #msg = message_factory.get_message(
                #    'vapi.bindings.typeconverter.unexpected.python.type',
                #    StructValue.__name__, type(self._in_value).__name__)
                VAPI.log.debug(msg)
                raise CoreException.new(msg)
=end
            end
        end
    end
end
