#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

# Data Validator classes

module VAPI::Data

    # @abstract vAPI Data object validator class.
    class Validator

        # This method validates a data value.
        #
        # @param data_value [DataValue] The struct value that needs to be validated
        # @param data_type [BindingType] The Struct binding type
        # @return [Array<Message>] List of error messages if validation fails or nil
        def validate(data_value, data_type=nil)
            raise NotImplementedError
        end
    end


    # Union Validator class that validates a struct value for union consistency.
    class UnionValidator < Validator

        # Constructs a new instance.
        #
        # @param discriminant_name [String] Name of a structure field that
        #        represents a union discriminant
        # @param case_map [Hash] Ruby hash with string value of the
        #        discriminant as dictionary key and list of tuple of
        #        structure field associated with it and a boolean
        #        representing whether it is rqeuired as dictionary value
        def initialize(discriminant_name, case_map)
            super()
            @discriminant_name = discriminant_name
            @case_map = case_map
        end

        # Validates a struct value for union consistency
        #
        # @param data_value [VAPI::Data::DataValue]
        #   The struct value that needs to be validated
        # @param data_type [VAPI::Bindings::BindingType]
        #   The Struct binding type
        # @return [Array<VAPI::Message>] List of error messages if validation fails or nil
        def validate(data_value, data_type=nil)
            #TODO: port from python runtime
        end
    end


    # HasFieldsOfValidator validator class that validates the data_value has
    # required fields of the class specified.
    class HasFieldsOfValidator < Validator

        def initialize(self)
            super()
        end

        # Validates a struct value for union consistency
        #
        # @param data_value [VAPI::Data::DataValue]
        #   The struct value that needs to be validated
        # @param data_type [VAPI::Bindings::BindingType]
        #   The Struct binding type
        # @return [Array<VAPI::Message>] List of error messages if validation fails or nil
        def validate(data_value, data_type=nil)
            #TODO: port from python runtime
        end
    end

end
