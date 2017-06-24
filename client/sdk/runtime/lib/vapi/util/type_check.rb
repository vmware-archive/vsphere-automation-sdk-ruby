#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Util

    class << self

        # Checks the type of an object.
        # @example Check a parameter type
        #   VAPI::Util.check_type(self, 'interface_id', interface_id, InterfaceIdentifier)
        #
        # @param target [Object] any target object within the runtime
        # @param name [String] the name of the object being checked
        # @param value [Object] the value of the object being checked
        # @param type [Class] the expected type of the object being checked
        # @raise [TypeError] when the object does not have the expected type
        def check_type(target, name, value, type)
            unless value.is_a? type
                raise TypeError.new("#{target.class.name}: #{name} must be a #{type}, but got #{value.class.name}")
            end
        end
    end

end

