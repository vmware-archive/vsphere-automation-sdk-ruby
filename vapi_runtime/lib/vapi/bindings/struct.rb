#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

# TODO: Split this into static and dynamic structures.

module VAPI::Bindings

    # Representation of IDL Structure in Ruby bindings.
    class VapiStruct
        attr_reader :struct_type, :struct_value
        attr_accessor :unexpected_fields

        @@validator_list = nil

        # Constructs a new instance.
        # @param struct_type [VAPI::Bindings::StructType]
        # @param ruby_values [Hash] a map of initial property values to be used to
        #        create this VapiStruct or nil
        # @param struct_value [VAPI::Data::StructValue] a raw StructValue to be used to
        #        create this VapiStruct or nil
        def initialize(struct_type, ruby_values=nil, struct_value=nil)
            @struct_type = struct_type
            @struct_value = struct_value

            ruby_values.each {|k,v|
                if self.respond_to? k
                    instance_variable_set "@#{k}", v
                else
                    raise "unknown attribute name (#{k}) passed to constructor"
                end
            } if ruby_values.is_a? Hash

            # fields will either be in native form or in unknown fields
            self.unexpected_fields = nil
        end
    end

    class PrettyPrinter
        #TODO: port this concept to ruby
    end
end
