#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

require 'set'

module VAPI::Bindings

    # Converter module that converts values from vAPI data model to Ruby native data model.
    module TypeConverter

        # Converts a vAPI DataValue to a Ruby native value.
        #
        # @param vapi_value [VAPI::Data::DataValue] vAPI DataValue to be converted
        # @param binding_type [BindingType] BindingType for the value
        # @param resolver [NameToTypeResolver, nil] Type resolver
        # @return [Object] Ruby native value
        def self.convert_to_ruby(vapi_value, binding_type, resolver=nil)
            visitor = VapiToRubyVisitor.new(vapi_value, resolver)
            binding_type.accept(visitor)
            return visitor.result
        end

        # Converts a Ruby native value to a vAPI DataValue.
        #
        # @param ruby_value [Object] Ruby native value to be converted
        # @param binding_type [BindingType] BindingType for the value
        # @return [VAPI::Data::DataValue] vAPI DataValue
        def self.convert_to_vapi(ruby_value, binding_type)
            #TODO: change this over from the old to new as well
            return binding_type.to_vapi(ruby_value)

            visitor = RubyToVapiVisitor.new(ruby_value)
            binding_type.accept(visitor)
            return visitor.result
        end
    end


    # Visitor to convert from Ruby native value to a vAPI DataValue.
    # @!attribute [rw] input
    #   @return [Object] Ruby native value
    # @!attribute [rw] result
    #   @return [VAPI::Data::DataValue] vAPI DataValue converted from the Ruby native value
    class RubyToVapiVisitor < BindingTypeVisitor
        attr_accessor :input, :result

        #private
        @@dispatch_map = {
            VoidType => :visit_void,
            BooleanType => :visit_primitive,
            IntegerType => :visit_primitive,
            DoubleType => :visit_primitive,
            StringType => :visit_primitive,
            SecretType => :visit_primitive,
            IdType => :visit_primitive,
            BlobType => :visit_primitive,
            AnyErrorType => :visit_any_error,
            DateTimeType => :visit_date_time,
            URIType => :visit_uri,
            OpaqueType => :visit_opaque,

            OptionalType => :visit_optional,
            ListType => :visit_list,
            SetType => :visit_set,
            MapType => :visit_map,

            StructType => :visit_struct,
            OperationInputType => :visit_struct,
            ErrorType => :visit_error,
            DynamicStructType => :visit_dynamic_struct,
            EnumType => :visit_enum,
            ReferenceType => :visit_reference,
        }

        # Constructs a new instance.
        #
        # @param value [Object] Native ruby value
        def initialize(value)
            super()
            self.input = value
            self.result = nil
        end

        # Reports an error message by logging it and raising an error.
        # @raise [CoreException] to report the error to the user
        def report_error(msg_id, *args)
            #TODO: figure out the L10N message bundle stuff for ruby
            #msg = message_factory.get_message(msg_id, *args)
            #    'vapi.bindings.typeconverter.unexpected.struct.type',
            #    input.class.name)
            msg = msg_id
            VAPI.log.debug(msg)
            raise BindingsException.new(msg)
        end

        # Visits a type ruby value
        # @param binding_type [BindingType] Binding type of the value
        def visit(binding_type)
            key = binding_type.class
            method = @@dispatch_map[key]
            raise "unexpected binding type: #{key}" unless method
            send(method, binding_type)
        end

        # Visits a primitive type ruby value
        # @param binding_type [BindingType] Binding type of the value
        def visit_primitive(binding_type)
            self.result = binding_type.to_vapi(input)
        end

        # Visit a void value (i.e. nil)
        # @param binding_type [VoidType] Binding type of the value
        def visit_void(binding_type)
            if not input.nil?
                report_error('vapi.bindings.typeconverter.voiddef.expect.null',
                    input.class.name)
            end
            self.result = binding_type.to_vapi(nil)
        end

        # Visit an opaque value. Don't do any conversion.
        # @param binding_type [OpaqueType] Binding type of the value
        def visit_opaque(binding_type)
            if not input.is_a? DataValue
                report_error('vapi.bindings.typeconverter.unexpected.ruby.type',
                    DataValue.name, input.class.name)
            end
            self.result = self.input
        end

        # Visit a list value.
        # @param binding_type [ListType] Binding type of the value
        def visit_list(binding_type)
            in_value = self.input
            out_value = binding_type.to_vapi()
            et = binding_type.element_type
            for elt_value in in_value
                self.input = elt_value
                visit(et)
                out_value.add(result)
            end
            self.input = in_value
            self.result = out_value
        end

        # Visit a ruby set.
        # @param binding_type [SetType] Binding type of the value
        def visit_set(binding_type)
            if not input.is_a? Set
                report_error('vapi.bindings.typeconverter.invalid',
                    'set', input.class.name)
            end
            visit_list(binding_type)
        end

        # Visit a ruby hash.
        # @param binding_type [MapType] Binding type of the value
        def visit_map(binding_type)
            in_value = self.input
            out_value = binding_type.definition.new_value()
            struct_def = binding_type.definition.element_type
            in_value.each { |k, v|
                struct_val = struct_def.new_value()
                self.input = k
                visit(binding_type.key_type)
                struct_val.set_field(MAP_KEY_FIELD, result)
                self.input = v
                visit(binding_type.value_type)
                struct_val.set_field(MAP_VALUE_FIELD, result)
                out_value.add(struct_val)
            }
            self.input = in_value
            self.result = out_value
        end

        # Visit an instance of VapiStruct class.
        # @param binding_type [StructType] Binding type of the value
        # @return [VAPI::Data::DataValue] vAPI Data value
        def _visit_vapi_struct(binding_type)
            in_value = self.input
            out_value = binding_type.definition.new_value()
            field_names = binding_type.get_field_names()
            for field in field_names
                begin
                    self.input = in_value.get_field(field)
                    # If input is nil and field type is not
                    # optional, raise an error
                    field_type = binding_type.get_field(field)
                    if not field_type.is_a? OptionalType and input.nil?
                        raise AttributeError
                    end
                rescue AttributeError
                    report_error('vapi.bindings.typeconverter.struct.missing.field',
                        field, binding_type.name)
                end

                begin
                    visit(binding_type.get_field(field))
                rescue Exception => e
                    report_error('vapi.bindings.typeconverter.struct.invalid.field',
                        field, binding_type.name)
                end
                out_value.set_field(field, result)
            end
            self.input = in_value
            self.result = out_value
        end

        # Visit an instance of ruby native hash.
        # @param binding_type [StructType] Binding type of the value
        # @return [VAPI::Data::DataValue] vAPI Data value
        def _visit_ruby_hash(binding_type)
            in_value = self.input
            out_value = binding_type.definition.new_value()
            field_names = binding_type.get_field_names()
            for field in field_names
                begin
                    self.input = in_value[field]
                rescue KeyError
                    report_error('vapi.bindings.typeconverter.hash.missing.key',
                        field)
                end
                visit(binding_type.get_field(field))
                out_value.set_field(field, result)
            end
            self.input = in_value
            self.result = out_value
        end

        # Visit a struct value.
        # @param binding_type [StructType] Binding type of the value
        def visit_struct(binding_type)
            if input.is_a? VapiStruct
                _visit_vapi_struct(binding_type)
                # Validating the constraints in the struct value
                # before sending it over the wire. The validation does
                # not happen during initialization of VapiStruct or
                # StructValue
                input.validate_struct_value(result)

            elsif input.is_a? Hash
                _visit_ruby_hash(binding_type)
            else
                VAPI.log.debug('unexpected.struct.type: ' + input.class.name)
                report_error('vapi.bindings.typeconverter.unexpected.struct.type',
                    input.class.name)
            end
        end

        # Visit an error value.
        # @param binding_type [ErrorType] Binding type of the value
        def visit_error(binding_type)
            if input.is_a? VapiError
                _visit_vapi_struct(binding_type)
            else
                report_error('vapi.bindings.typeconverter.unexpected.error.type',
                    input.class.name)
            end
        end

        # Visit any struct value.
        # @param binding_type [DynamicStructType] Binding type of the value
        def visit_dynamic_struct(binding_type)
            if input.class.name == 'VapiStruct'
                self.result = self.input.get_struct_value()
            elsif input.class.name == 'VapiError'
                self.result = self.input.get_error_value()
            elsif input.is_a? VapiStruct
                _visit_vapi_struct(input.get_binding_type())
            elsif input.is_a? StructValue
                self.result = self.input
            else
                report_error('vapi.bindings.typeconverter.unexpected.ruby.type',
                     StructValue.name, input.class.name)
            end
        end

        # Visit any error value.
        # @param binding_type [AnyErrorType] Binding type of the value
        def visit_any_error(binding_type)
            if input.is_a? UnresolvedError
                self.result = self.input.get_error_value()
            elsif input.is_a? VapiError
                _visit_vapi_struct(input.get_binding_type())
            else
                report_error('vapi.bindings.typeconverter.unexpected.ruby.type',
                     VapiError.name, input.class.name)
            end
        end

        # Visit an optional value
        # @param binding_type [OptionalType] Binding type of the value
        def visit_optional(binding_type)
            if input.nil?
                self.result = binding_type.definition.new_value()
            else
                visit(binding_type.element_type)
                self.result = binding_type.definition.new_value(result)
            end
        end

        # Visit a datetime value.
        # @param binding_type [DateTimeType] Binding type of the value
        def visit_date_time(binding_type)
            dt_str = DateTimeConverter.convert_from_datetime(input)
            self.result = binding_type.definition.new_value(dt_str)
        end

        # Visit an URI value.
        # @param binding_type [URIType] Binding type of the value
        def visit_uri(binding_type)
            URIValidator.validate(input)
            self.result = binding_type.definition.new_value(input)
        end

        # Visit a reference type.
        # @param binding_type [ReferenceType] Binding type of the value
        def visit_reference(binding_type)
            visit(binding_type.resolved_type)
        end

        # Visit a enum type ruby value.
        # @param binding_type [EnumType] Binding type of the value
        def visit_enum(binding_type)
            if not input.is_a? Enum
                # TODO: Verify if the value is instance of actual binding class
                report_error('vapi.bindings.typeconverter.unexpected.ruby.type',
                    Enum, input.class)
            end
            self.result = binding_type.definition.new_value(input)
        end

    end


    # Visitor to convert from a vAPI DataValue to a Ruby native value.
    # @!attribute [rw] input
    #   @return [VAPI::Data::DataValue] vAPI DataValue
    # @!attribute [rw] result
    #   @return [Object] Ruby native value converted from the vAPI DataValue
    class VapiToRubyVisitor < BindingTypeVisitor
        attr_accessor :input, :result, :resolver

        #private
        @@dispatch_map = {
            VoidType => :visit_void,
            BooleanType => :visit_primitive,
            IntegerType => :visit_primitive,
            DoubleType => :visit_primitive,
            StringType => :visit_string,
            SecretType => :visit_primitive,
            IdType => :visit_primitive,
            DateTimeType => :visit_date_time,
            URIType => :visit_uri,
            BlobType => :visit_blob,
            OpaqueType => :visit_opaque,
            AnyErrorType => :visit_any_error,

            OptionalType => :visit_optional,
            ListType => :visit_list,
            SetType => :visit_set,
            MapType => :visit_map,

            StructType => :visit_struct,
            OperationInputType => :visit_struct,
            ErrorType => :visit_error,
            ReferenceType => :visit_reference,
            DynamicStructType => :visit_dynamic_struct,
            EnumType => :visit_enum,
        }

        # Constructs a new instance.
        # @param value [VAPI::Data::DataValue] vAPI DataValue to be converted
        # @param resolver [NameToTypeResolver] Type resolver
        def initialize(value, resolver)
            super()
            self.input = value
            self.resolver = resolver
            self.result = nil
        end

        def visit(binding_type)
            key = binding_type.class #.name
            method = @@dispatch_map[key]
            raise "unexpected binding type: #{key}" unless method
            send(method, binding_type)
        end

        # Visit one of the primitive DataValues
        # @param binding_type [BindingType] Binding type of the value
        def visit_primitive(binding_type)
            self.result = self.input.value
        end

        # Since there is no VoidValue, just return nil.
        # @param binding_type [VoidType] Binding type of the value
        def visit_void(binding_type)
            self.result = nil
        end

        # Visit StringValue
        # @param binding_type [StringType] Binding type of the value
        def visit_string(binding_type)
            #TODO: review what to do for Unicode in Ruby
            begin
                self.result = self.input.value
            rescue Exception => e
            #rescue 'UnicodeError (or perhaps input is nil)' #UnicodeError
                self.result = self.input.value
            end
        end

        # Since there is no OpaqueValue, don't do any conversion.
        # @param binding_type [OpaqueType] Binding type of the value
        def visit_opaque(binding_type)
            self.result = self.input
        end

        # Visit a ListValue.
        # @param binding_type [ListType] Binding type of the value
        def visit_list(binding_type)
            orig_input = self.input # save
            out_list = []
            et = binding_type.element_type
            for ev in orig_input.value
                out_list << visit_list_element(ev, et)
            end
            self.input = orig_input # restore
            self.result = out_list
        end

        # Visit a ListValue element
        # @param value [DataValue] element value
        # @param binding_type [ListType] Binding type of the element
        #private
        def visit_list_element(value, binding_type)
            self.input = value
            visit(binding_type)
            return self.result
        end

        # Visit a List Value. This ListValue must represent a set i.e. there must not be any duplicate elements.
        # @param binding_type [SetType] Binding type of the value
        def visit_set(binding_type)
            orig_input = self.input # save
            out_set = Set.new
            et = binding_type.element_type
            for ev in orig_input.value
                candidate = visit_list_element(ev, et)
                if out_set.include? candidate
                    report_error('vapi.bindings.typeconverter.set.duplicate.element', candidate)
                end
                out_set << candidate
            end
            self.input = orig_input # restore
            self.result = out_set
        end

        # Visit a List Value. This ListValue must represent a map. Each element
        # of the ListValue is a StructValue with two fields, namely 'key' and 'value'.
        # The 'key' field represents the key of the map and the 'value' field
        # represents the value of the map. Also, since this represents a map, there
        # should not be duplicate keys.
        # @param binding_type [MapType] Binding type of the value
        def visit_map(binding_type)
            orig_input = self.input # save
            out_map = {}
            for ev in orig_input.value
                key = visit_struct_field(ev.get_field(binding_type.key_name),
                                         binding_type.key_type)
                if out_map.include? key
                    report_error('vapi.bindings.typeconverter.map.duplicate.key', key)
                end
                value = visit_struct_field(ev.get_field(binding_type.value_name),
                                           binding_type.value_type)
                out_map[key] = value
            end
            self.input = orig_input # restore
            self.result = out_map
        end

        # Visit a field of a StructValue.
        # @param value [VAPI::Data::DataValue] field value
        # @param binding_type [StructType] Binding type of the struct field
        #private
        def visit_struct_field(value, binding_type)
            self.input = value
            visit(binding_type)
            return self.result
        end

        # Visit StructValue.
        # @param binding_type [StructType] Binding type of the value
        def visit_struct(binding_type)
            orig_input = self.input # save
            out_value = {}
            type_field_names = binding_type.field_names
            value_field_names = self.input.field_names

            struct_class = binding_type.binding_class
            unless struct_class.nil?
                #TODO: add this someday
                #struct_class.validate_struct_value(self.input)
                out_instance = struct_class.new(self.input)
            end

            for field_name in type_field_names
                ruby_name = field_name
                ruby_setter = "#{field_name}="
                field_type = binding_type.get_field(field_name)
                # When the request is converted from DataValue to Native value
                # on the server side
                # - if the client - server version matches: we wont hit this case
                # - if new client talks to old server, runtime would have
                #   raised InvalidArgument error if there are unexpected optional
                #   fields
                # - if old client talks to new server, runtime adds the missing
                #   optional fields, so we wont hit this case
                #
                # When the response is converted from DataValue to Native value
                # on the client side
                # - if the client - server version matches: we wont hit this case
                # - if new client talks to old server,  client bindings should
                #   tolerate the absence of expected optional properties. So,
                #   we have to set it to nil!
                # - if old client talks to new server, we will visit all the known
                #   fields here and the unexpected fields are added to the VapiStruct
                #   object
                if field_type.is_a? OptionalType and not orig_input.has_field? field_name
                    field_value = nil
                else
                    field_value = visit_struct_field(
                        orig_input.get_field(field_name), field_type)
                end
                out_value[ruby_name] = field_value
                unless out_instance.nil?
                    begin
                        out_instance.send(ruby_setter, field_value)
                    rescue NoMethodError
                        ruby_setter = "#{field_name}_=" # escape possible keywords
                        out_instance.send(ruby_setter, field_value)
                    end
                end
            end
            self.input = orig_input # restore

            unless out_instance.nil?
                # Fields present in struct value but not in struct binding type.
                unexpected_field_names = Set.new(value_field_names) - Set.new(type_field_names)
                if unexpected_field_names
                    unexpected_fields = {}
                    for field_name in unexpected_field_names
                        unexpected_fields[field_name] = orig_input.get_field(field_name)
                    end
                    #TODO: work on this more
                    #out_instance.set_unexpected_fields(unexpected_fields)
                end
                self.result = out_instance
            else
                self.result = out_value
            end
        end

        # Visit StructValue to convert it into the base VapiStruct
        # @param binding_type [DynamicStructType] Binding type of the value
        def visit_dynamic_struct(binding_type)
            self.result = VapiStruct.new(struct_value=self.input)
        end

        # Visit ErrorValue to convert it into the base VapiError
        # @param binding_type [AnyErrorType] Binding type of the value
        def visit_any_error(binding_type)
            #VAPI.log.debug "VERBOSE: visit_any_error called: input=#{self.input}"
            begin
                binding_class = VAPI::Util.class_from_canonical_name(self.input.name)
                visit_error(binding_class.binding_type)
            rescue
                #TODO: pass input into this ctor somehow
                self.result = UnresolvedErrorType.new("could not find: #{self.input.name}")
            end
        end

        # Visit ErrorValue.
        # @param binding_type [ErrorType] Binding type of the value
        def visit_error(binding_type)
            visit_struct(binding_type)
        end

        # Visit OptionalValue
        # @param binding_type [OptionalType] Binding type of the value
        def visit_optional(binding_type)
            if input.nil? || input.value.nil?
                self.result = nil
            else
                self.input = self.input.value
                visit(binding_type.element_type)
            end
        end

        # Visit a binary value.
        # @param binding_type [BlobType] Binding type of the value
        def visit_blob(binding_type)
            #TODO: consider moving the conversion right in here.
            self.result = binding_type.to_ruby(input)
        end

        # Visit a datetime value.
        # @param binding_type [DateTimeType] Binding type of the value
        def visit_date_time(binding_type)
            self.result = binding_type.to_ruby(input)
        end

        # Visit an URI value.
        # @param binding_type [UriType] Binding type of the value
        def visit_uri(binding_type)
            uri_string = self.input.value
            #TODO: URIValidator.validate(uri_string)
            self.result = binding_type.to_ruby(input)
        end

        # Visit an Enum value.
        # @param binding_type [EnumType] Binding type of the value
        def visit_enum(binding_type)
            #VAPI.log.debug "VERBOSE: visit_enum called - #{self.input}"
            enum_string = self.input.value
            if binding_type.binding_class
                self.result = binding_type.binding_class.from_string(enum_string)
            else
                #TODO: port this to ruby
                #self.result = Enum.new(enum_string)
                self.result = enum_string
            end
        end

        # Visit a reference type.
        # @param binding_type [ReferenceType] Binding type of the value
        def visit_reference(binding_type)
            #VAPI.log.debug "VERBOSE: visit_reference called: input=#{self.input}"
            visit(binding_type.binding_class.binding_type)
        end
    end

end
