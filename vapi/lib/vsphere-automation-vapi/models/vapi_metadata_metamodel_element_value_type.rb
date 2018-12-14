=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'date'

module VSphereAutomation
  module VAPI
    class VapiMetadataMetamodelElementValueType
    
    LONG = 'LONG'.freeze
    STRING = 'STRING'.freeze
    STRING_LIST = 'STRING_LIST'.freeze
    STRUCTURE_REFERENCE = 'STRUCTURE_REFERENCE'.freeze
    STRUCTURE_REFERENCE_LIST = 'STRUCTURE_REFERENCE_LIST'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VapiMetadataMetamodelElementValueType.constants.select { |c| VapiMetadataMetamodelElementValueType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VapiMetadataMetamodelElementValueType" if constantValues.empty?
      value
    end
  end
  end
end
