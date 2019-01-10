=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterDeploymentQuestionQuestionType
    
    YES_NO = 'YES_NO'.freeze
    OK_CANCEL = 'OK_CANCEL'.freeze
    ABORT_RETRY_IGNORE = 'ABORT_RETRY_IGNORE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterDeploymentQuestionQuestionType.constants.select { |c| VcenterDeploymentQuestionQuestionType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterDeploymentQuestionQuestionType" if constantValues.empty?
      value
    end
  end
  end
end
