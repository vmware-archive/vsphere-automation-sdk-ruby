# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxClustersNetworkingStatusConfigStatus
    
    NOT_STARTED = "NOT_STARTED".freeze
    IN_PROGRESS = "IN_PROGRESS".freeze
    PARTIAL_SUCCESS = "PARTIAL_SUCCESS".freeze
    SUCCESS = "SUCCESS".freeze
    INDETERMINATE = "INDETERMINATE".freeze
    FAILED = "FAILED".freeze
    DISABLING = "DISABLING".freeze
    DISABLED = "DISABLED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterNsxClustersNetworkingStatusConfigStatus.constants.select { |c| VcenterNsxClustersNetworkingStatusConfigStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterNsxClustersNetworkingStatusConfigStatus" if constantValues.empty?
      value
    end
  end
  end
end
