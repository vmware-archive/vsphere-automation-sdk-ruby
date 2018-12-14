=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'date'

module VSphereAutomation
  module VAPI
    class VapiMetadataCliCommandGenericType
    
    NONE = 'NONE'.freeze
    OPTIONAL = 'OPTIONAL'.freeze
    LIST = 'LIST'.freeze
    OPTIONAL_LIST = 'OPTIONAL_LIST'.freeze
    LIST_OPTIONAL = 'LIST_OPTIONAL'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VapiMetadataCliCommandGenericType.constants.select { |c| VapiMetadataCliCommandGenericType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VapiMetadataCliCommandGenericType" if constantValues.empty?
      value
    end
  end
  end
end
