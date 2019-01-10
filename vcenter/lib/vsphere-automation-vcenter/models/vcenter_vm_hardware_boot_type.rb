=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareBootType
    
    BIOS = 'BIOS'.freeze
    EFI = 'EFI'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareBootType.constants.select { |c| VcenterVmHardwareBootType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareBootType" if constantValues.empty?
      value
    end
  end
  end
end
