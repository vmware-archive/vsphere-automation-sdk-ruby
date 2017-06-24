#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Bindings

    # Representation of IDL Enumeration in Ruby bindings.
    class VapiEnum #< String
        attr_reader :enum_type, :value, :unknown

        # Constructs a new instance.
        # @param enum_type [VAPI::Bindings::EnumType] the binding type of this enum
        # @param value [String] the actual enum value
        def initialize(enum_type, value, unknown=nil)
            @enum_type = enum_type
            @value = value
            @unknown = unknown

            #syms.each { |s| const_set(s, s.to_s) }
            #const_set(:DEFAULT, syms.first) unless syms.nil?
            #const_get(:FOO)
        end

        def is_unknown?
            #self.value == 'UNKNOWN' &&
            not self.unknown.nil?
        end

        def inspect
            x = self.unknown ? "#{self.value}, #{self.unknown}" : self.value
            "#{self.class.name}(#{x})"
        end

        def to_s
            self.value
        end
    end
end
