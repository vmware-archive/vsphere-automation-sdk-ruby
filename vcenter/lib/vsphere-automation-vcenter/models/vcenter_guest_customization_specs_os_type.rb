=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterGuestCustomizationSpecsOsType
    
    WINDOWS = 'WINDOWS'.freeze
    LINUX = 'LINUX'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterGuestCustomizationSpecsOsType.constants.select { |c| VcenterGuestCustomizationSpecsOsType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterGuestCustomizationSpecsOsType" if constantValues.empty?
      value
    end
  end
  end
end
