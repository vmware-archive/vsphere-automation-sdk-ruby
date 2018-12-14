=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmGuestPowerState
    
    RUNNING = 'RUNNING'.freeze
    SHUTTING_DOWN = 'SHUTTING_DOWN'.freeze
    RESETTING = 'RESETTING'.freeze
    STANDBY = 'STANDBY'.freeze
    NOT_RUNNING = 'NOT_RUNNING'.freeze
    UNAVAILABLE = 'UNAVAILABLE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmGuestPowerState.constants.select { |c| VcenterVmGuestPowerState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmGuestPowerState" if constantValues.empty?
      value
    end
  end
  end
end
