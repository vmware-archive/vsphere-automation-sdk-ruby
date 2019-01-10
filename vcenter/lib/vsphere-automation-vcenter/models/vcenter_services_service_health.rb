=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterServicesServiceHealth
    
    DEGRADED = 'DEGRADED'.freeze
    HEALTHY = 'HEALTHY'.freeze
    HEALTHY_WITH_WARNINGS = 'HEALTHY_WITH_WARNINGS'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterServicesServiceHealth.constants.select { |c| VcenterServicesServiceHealth::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterServicesServiceHealth" if constantValues.empty?
      value
    end
  end
  end
end
