=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceMonitoringIntervalType
    
    MINUTES30 = 'MINUTES30'.freeze
    HOURS2 = 'HOURS2'.freeze
    MINUTES5 = 'MINUTES5'.freeze
    DAY1 = 'DAY1'.freeze
    HOURS6 = 'HOURS6'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceMonitoringIntervalType.constants.select { |c| ApplianceMonitoringIntervalType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceMonitoringIntervalType" if constantValues.empty?
      value
    end
  end
  end
end
