=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterDeploymentApplianceState
    
    NOT_INITIALIZED = 'NOT_INITIALIZED'.freeze
    INITIALIZED = 'INITIALIZED'.freeze
    CONFIG_IN_PROGRESS = 'CONFIG_IN_PROGRESS'.freeze
    QUESTION_RAISED = 'QUESTION_RAISED'.freeze
    FAILED = 'FAILED'.freeze
    CONFIGURED = 'CONFIGURED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterDeploymentApplianceState.constants.select { |c| VcenterDeploymentApplianceState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterDeploymentApplianceState" if constantValues.empty?
      value
    end
  end
  end
end
