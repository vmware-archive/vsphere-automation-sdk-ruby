=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareConnectionState
    
    CONNECTED = 'CONNECTED'.freeze
    RECOVERABLE_ERROR = 'RECOVERABLE_ERROR'.freeze
    UNRECOVERABLE_ERROR = 'UNRECOVERABLE_ERROR'.freeze
    NOT_CONNECTED = 'NOT_CONNECTED'.freeze
    UNKNOWN = 'UNKNOWN'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareConnectionState.constants.select { |c| VcenterVmHardwareConnectionState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareConnectionState" if constantValues.empty?
      value
    end
  end
  end
end
