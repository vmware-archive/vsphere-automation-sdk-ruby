=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareVersion
    
    N03 = 'VMX_03'.freeze
    N04 = 'VMX_04'.freeze
    N06 = 'VMX_06'.freeze
    N07 = 'VMX_07'.freeze
    N08 = 'VMX_08'.freeze
    N09 = 'VMX_09'.freeze
    N10 = 'VMX_10'.freeze
    N11 = 'VMX_11'.freeze
    N12 = 'VMX_12'.freeze
    N13 = 'VMX_13'.freeze
    N14 = 'VMX_14'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareVersion.constants.select { |c| VcenterVmHardwareVersion::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareVersion" if constantValues.empty?
      value
    end
  end
  end
end
