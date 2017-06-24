#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Util

    # Convenience class for visitors used in vAPI Ruby runtime
    class VapiVisitor

        # Constructs a new instance.
        #
        # @param suffix [String] The suffix string that should be removed from
        # class name during the dispatch
        def initialize(suffix=nil)
            @suffix = suffix
            @cache = {}
        end

        # Dispatch the call to the appropriate method based
        # on the type of the input argument
        #
        # @param value [Object] The object to be used for dispatch
        def visit(value)
            class_name = value.class.name
            method = @cache[class_name]
            if method.nil?
                type_name = class_name
            end
            if @suffix and type_name.end_with?(@suffix)
                #TODO: port this substring logic
                #type_name = type_name[0:-@suffix.size]
            end
            #type_name = Converter.capwords_to_underscore(type_name)
            #method = getattr(self, 'visit_' + type_name)
            @cache[class_name] = method
            return send(method, value)
        end
    end

end
