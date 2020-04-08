# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxDeploymentUpgradeStatus
    
    NOT_STARTED = "NOT_STARTED".freeze
    IN_PROGRESS = "IN_PROGRESS".freeze
    PAUSE_PENDING = "PAUSE_PENDING".freeze
    PAUSED = "PAUSED".freeze
    COMPLETED = "COMPLETED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterNsxDeploymentUpgradeStatus.constants.select { |c| VcenterNsxDeploymentUpgradeStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterNsxDeploymentUpgradeStatus" if constantValues.empty?
      value
    end
  end
  end
end
