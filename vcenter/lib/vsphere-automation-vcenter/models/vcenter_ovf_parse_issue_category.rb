=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterOvfParseIssueCategory
    
    VALUE_ILLEGAL = 'VALUE_ILLEGAL'.freeze
    ATTRIBUTE_REQUIRED = 'ATTRIBUTE_REQUIRED'.freeze
    ATTRIBUTE_ILLEGAL = 'ATTRIBUTE_ILLEGAL'.freeze
    ELEMENT_REQUIRED = 'ELEMENT_REQUIRED'.freeze
    ELEMENT_ILLEGAL = 'ELEMENT_ILLEGAL'.freeze
    ELEMENT_UNKNOWN = 'ELEMENT_UNKNOWN'.freeze
    SECTION_UNKNOWN = 'SECTION_UNKNOWN'.freeze
    SECTION_RESTRICTION = 'SECTION_RESTRICTION'.freeze
    PARSE_ERROR = 'PARSE_ERROR'.freeze
    GENERATE_ERROR = 'GENERATE_ERROR'.freeze
    VALIDATION_ERROR = 'VALIDATION_ERROR'.freeze
    EXPORT_ERROR = 'EXPORT_ERROR'.freeze
    INTERNAL_ERROR = 'INTERNAL_ERROR'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterOvfParseIssueCategory.constants.select { |c| VcenterOvfParseIssueCategory::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterOvfParseIssueCategory" if constantValues.empty?
      value
    end
  end
  end
end
