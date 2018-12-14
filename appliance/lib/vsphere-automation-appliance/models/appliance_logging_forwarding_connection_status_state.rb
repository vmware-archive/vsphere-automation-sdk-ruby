=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceLoggingForwardingConnectionStatusState
    
    UP = 'UP'.freeze
    DOWN = 'DOWN'.freeze
    UNKNOWN = 'UNKNOWN'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceLoggingForwardingConnectionStatusState.constants.select { |c| ApplianceLoggingForwardingConnectionStatusState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceLoggingForwardingConnectionStatusState" if constantValues.empty?
      value
    end
  end
  end
end
