=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceRecoveryReconciliationJobStatus
    
    NONE = 'NONE'.freeze
    RUNNING = 'RUNNING'.freeze
    SUCCEEDED = 'SUCCEEDED'.freeze
    FAILED = 'FAILED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceRecoveryReconciliationJobStatus.constants.select { |c| ApplianceRecoveryReconciliationJobStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceRecoveryReconciliationJobStatus" if constantValues.empty?
      value
    end
  end
  end
end
