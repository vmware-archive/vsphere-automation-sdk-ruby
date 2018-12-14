=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareEthernetEmulationType
    
    E1000 = 'E1000'.freeze
    E1000_E = 'E1000E'.freeze
    PCNET32 = 'PCNET32'.freeze
    VMXNET = 'VMXNET'.freeze
    VMXNET2 = 'VMXNET2'.freeze
    VMXNET3 = 'VMXNET3'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareEthernetEmulationType.constants.select { |c| VcenterVmHardwareEthernetEmulationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareEthernetEmulationType" if constantValues.empty?
      value
    end
  end
  end
end
