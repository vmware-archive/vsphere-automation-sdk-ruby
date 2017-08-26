#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT


module VAPI::Data

    # @abstract Base representation of a vAPI data value.
    # @!attribute [r] type
    #     @return [Fixnum] the type identifier, which
    #     is a unique number that used to be part of the wire encoding,
    #     but now is kept for historical purposes only
    # @!attribute [r] value
    #     @return [Object] the native Ruby value
    class DataValue
        attr_accessor :type, :value

        # Constructs a new instance.
        # @param type [Fixnum] the data type constant of this data value
        # @param value [Object] the native Ruby value
        def initialize(type, value)
            self.type = type
            self.value = value
        end

        def to_s
            "#{self.class.name}(#{value})"
        end

        def inspect
            to_s
        end

        protected

        def check_value(expected_type)
            if not expected_type
                #TODO: clean this up
                msg = 'vapi.data.invalid: value does not have expected type'
                #msg = message_factory.get_message('vapi.data.invalid',
                #    type,
                #    value.class.name)
                VAPI.log.error(msg)
                #raise CoreException.new(msg)
                raise RuntimeError.new(msg)
            end
        end
    end

    # @abstract Base representation of a vAPI primiitive data value.
    class PrimitiveValue < DataValue

        # Constructs a new instance.
        # @param type [Fixnum] the data type constant of this data value
        # @param value [Object] the native Ruby value
        def initialize(type, value)
            super(type, value)
        end
    end

    # Representation of a vAPI integer value.
    class IntegerValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [Integer] the native Ruby value
        def initialize(value=0)
            check_value(value.is_a? Integer)
            super(INTEGER, value)
        end
    end

    # Representation of a vAPI double value.
    class DoubleValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [Float] the native Ruby value
        def initialize(value=0.0)
            check_value(value.is_a? Float)
            super(DOUBLE, value)
        end
    end

    # Representation of a vAPI boolean value.
    class BooleanValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [Boolean] the native Ruby value
        def initialize(value=false)
            expected = value.is_a?(TrueClass) || value.is_a?(FalseClass)
            check_value(expected)
            super(BOOLEAN, value)
        end
    end

    # Representation of a vAPI string value.
    class StringValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [String] the native Ruby value
        def initialize(value)
            check_value(value.is_a? String)
            super(STRING, value)
        end
    end

    # Representation of a vAPI binary value.
    class BlobValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [String] the native Ruby value
        def initialize(value)
            check_value(value.is_a? String)
            #TODO: encode value to base 64 before passing it here
            super(BINARY, value)
        end
    end

    # Representation of a vAPI secret value.
    class SecretValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [byte] the native Ruby value
        def initialize(value)
            check_value(value.is_a? String)
            super(SECRET, value)
        end

        def to_s
            "#{self.class.name}(value=***)"
        end
    end

    # Representation of a vAPI URI value.
    class URIValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [String] the native Ruby value
        def initialize(value)
            check_value(value.is_a? String)
            super(STRING, value)
        end
    end

    # Representation of a vAPI ID value.
    class IDValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [String] the native Ruby value
        def initialize(value)
            check_value(value.is_a? String)
            super(STRING, value)
        end
    end

    # Representation of a vAPI DateTime value.
    class DateTimeValue < PrimitiveValue

        # Constructs a new instance.
        # @param value [String] the native Ruby value
        def initialize(value)
            check_value(value.is_a? String)
            #TODO: value must be in the correct datetime string format
=begin
            begin
                value = DateTime.parse(value)
            rescue
                check_value(false)
            end
=end
            super(STRING, value)
        end
    end

    # Representation of a vAPI void value.
    class VoidValue < DataValue

        # Constructs a new instance.
        # @param value [Object] the native Ruby value, which
        # when given must be nil (the default is nil)
        def initialize(value=nil)
            check_value(value.nil?)
            super(VOID, nil)
        end
    end

    # Representation of a vAPI list value.
    class ListValue < DataValue

        # Constructs a new instance.
        # @param value [Array<DataValue>] the native Ruby value
        def initialize(values=[])
            check_value(values.is_a? Array)
            super(LIST, values)
            #TODO: check each item is_a? DataValue
        end

        def add(value)
            #check_value(value.is_a? TBD)
            self.value.push(value)
        end
    end

    # Representation of a vAPI optional value.
    class OptionalValue < DataValue

        # Constructs a new instance.
        # @param value [DataValue] the native Ruby value
        def initialize(value)
            #NO: check_value(value.is_a? DataValue)
            super(OPTIONAL, value)
        end
    end

    class StructValue < DataValue
        attr_reader :name

        #def initialize(name, fields={}, type=STRUCTURE)
            #super(type, fields)
        def initialize(name, type=STRUCTURE)
            super(type, {})
            @name = name
        end

        def field_names
            self.value.keys
        end

        def get_field(field_name)
            self.value[field_name]
        end

        def set_field(field_name, value)
            self.value[field_name] = value
        end

        def set_fields(fields)
            fields.each { |key, value|
                self.value[key] = value
            }
        end

        def has_field?(field_name)
            self.value.has_key?(field_name)
        end

        def to_s
            "#{self.class.name}(#{name}, #{value})"
        end
    end

    class ErrorValue < StructValue

        def initialize(name)
            #super(name, fields, ERROR)
            super(name, ERROR)
        end
    end

end
