# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxDeploymentUpgradeOperationStatus
    
    NOT_STARTED = "NOT_STARTED".freeze
    IN_PROGRESS = "IN_PROGRESS".freeze
    PAUSED = "PAUSED".freeze
    COMPLETED_SUCCESS = "COMPLETED_SUCCESS".freeze
    COMPLETED_ERROR = "COMPLETED_ERROR".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterNsxDeploymentUpgradeOperationStatus.constants.select { |c| VcenterNsxDeploymentUpgradeOperationStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterNsxDeploymentUpgradeOperationStatus" if constantValues.empty?
      value
    end
  end
  end
end
