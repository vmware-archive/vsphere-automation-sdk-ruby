=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareCdromBackingType
    
    ISO_FILE = 'ISO_FILE'.freeze
    HOST_DEVICE = 'HOST_DEVICE'.freeze
    CLIENT_DEVICE = 'CLIENT_DEVICE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareCdromBackingType.constants.select { |c| VcenterVmHardwareCdromBackingType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareCdromBackingType" if constantValues.empty?
      value
    end
  end
  end
end
