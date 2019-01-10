=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareUpgradePolicy
    
    NEVER = 'NEVER'.freeze
    AFTER_CLEAN_SHUTDOWN = 'AFTER_CLEAN_SHUTDOWN'.freeze
    ALWAYS = 'ALWAYS'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareUpgradePolicy.constants.select { |c| VcenterVmHardwareUpgradePolicy::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareUpgradePolicy" if constantValues.empty?
      value
    end
  end
  end
end
