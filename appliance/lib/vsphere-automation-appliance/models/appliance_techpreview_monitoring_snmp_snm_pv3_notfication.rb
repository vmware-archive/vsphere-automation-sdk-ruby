=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewMonitoringSnmpSNMPv3Notfication
    
    INFORM = 'inform'.freeze
    TRAP = 'trap'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceTechpreviewMonitoringSnmpSNMPv3Notfication.constants.select { |c| ApplianceTechpreviewMonitoringSnmpSNMPv3Notfication::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceTechpreviewMonitoringSnmpSNMPv3Notfication" if constantValues.empty?
      value
    end
  end
  end
end
