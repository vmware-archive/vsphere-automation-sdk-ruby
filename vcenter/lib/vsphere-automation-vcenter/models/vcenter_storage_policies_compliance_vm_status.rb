# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterStoragePoliciesComplianceVMStatus
    
    COMPLIANT = 'COMPLIANT'.freeze
    NON_COMPLIANT = 'NON_COMPLIANT'.freeze
    UNKNOWN_COMPLIANCE = 'UNKNOWN_COMPLIANCE'.freeze
    NOT_APPLICABLE = 'NOT_APPLICABLE'.freeze
    OUT_OF_DATE = 'OUT_OF_DATE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterStoragePoliciesComplianceVMStatus.constants.select { |c| VcenterStoragePoliciesComplianceVMStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterStoragePoliciesComplianceVMStatus" if constantValues.empty?
      value
    end
  end
  end
end
