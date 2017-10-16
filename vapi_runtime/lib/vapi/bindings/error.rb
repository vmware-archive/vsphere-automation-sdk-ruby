#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Bindings

    # Representation of a VMODL Error in the Ruby language bindings.
    # @attribute error_value
    #     @return [VAPI::Data::ErrorValue] the corresponding ErrorValue for the VapiError class
    class VapiError < BindingsException
        #TODO: include VapiStructMixin

        attr_accessor :error_type, :error_value

        # Constructs a new instance.
        # @param error_value [VAPI::Data::ErrorValue] ErrorValue to be used for VapiError
        def initialize(error_type, error_value=nil)
            if error_value.nil?
                message = "VapiError"
            else
                #TODO: build the message more dynamically when error_value is given
                # e.g., pull default_message property out of the ErrorValue
                # error_value.get_field('messages') # an array of LocalizableMessage structs
                message = error_value.to_s
            end
            self.error_type = error_type
            self.error_value = error_value
            super(message)
        end
    end

end
