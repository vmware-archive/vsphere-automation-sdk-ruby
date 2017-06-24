#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Util

    class << self

        # Dynamically locates a Ruby class given its name in string form.
        #
        # Credit: http://stackoverflow.com/questions/3163641/get-a-class-by-name-in-ruby
        # the_class = class_from_string("Admin::MetaDatasController")
        # @param name [String]
        #     the fully qualified name of a Ruby class
        # @return [Class] when the Ruby class is successfully located,
        #         otherwise an Exception will be raised
        # @raise [NameError] when any module in the path cannot be resolved or
        #     when the class name cannot be resolved
        def class_from_string(name)
            name.split('::').inject(Object) do |mod, class_name|
                mod.const_get(class_name)
            end
        end

        # Dynamically locates a Ruby class given its canonical name in string form.
        #
        # @param canonical_name [String]
        #     the fully qualified canonical name of a vAPI type
        # @return [Class] when the Ruby class is successfully located,
        #         otherwise an Exception will be raised
        # @raise [NameError] when any module in the path cannot be resolved or
        #     when the class name cannot be resolved
        def class_from_canonical_name(canonical_name)
            parts = canonical_name.split('.')
            cap_parts = parts.collect { |part|
                #TODO: this algorithm does not handle acronyms right now - fix that
                # e.g., if part is already all caps, then leave it alone
                part.split('_').collect { |i|
                    i.capitalize
                }.join('')
            }
            class_from_string(cap_parts.join('::'))
        end
    end
end

