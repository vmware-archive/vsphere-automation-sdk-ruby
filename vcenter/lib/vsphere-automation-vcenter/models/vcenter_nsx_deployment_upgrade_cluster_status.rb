# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxDeploymentUpgradeClusterStatus
    
    NOT_STARTED = "NOT_STARTED".freeze
    PRECHECK_IN_PROGRESS = "PRECHECK_IN_PROGRESS".freeze
    PRECHECK_COMPLETED_SUCCESS = "PRECHECK_COMPLETED_SUCCESS".freeze
    PRECHECK_COMPLETED_WARNING = "PRECHECK_COMPLETED_WARNING".freeze
    PRECHECK_COMPLETED_ERROR = "PRECHECK_COMPLETED_ERROR".freeze
    UPGRADE_IN_QUEUE = "UPGRADE_IN_QUEUE".freeze
    UPGRADE_IN_PROGRESS = "UPGRADE_IN_PROGRESS".freeze
    UPGRADE_PAUSED = "UPGRADE_PAUSED".freeze
    UPGRADE_COMPLETED_SUCCESS = "UPGRADE_COMPLETED_SUCCESS".freeze
    UPGRADE_COMPLETED_FAILED = "UPGRADE_COMPLETED_FAILED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterNsxDeploymentUpgradeClusterStatus.constants.select { |c| VcenterNsxDeploymentUpgradeClusterStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterNsxDeploymentUpgradeClusterStatus" if constantValues.empty?
      value
    end
  end
  end
end
