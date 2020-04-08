# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterClusterEdrsMaintenanceModeStatus
    
    ENTERING_MAINTENANCE_MODE = "ENTERING_MAINTENANCE_MODE".freeze
    IN_MAINTENANCE_MODE = "IN_MAINTENANCE_MODE".freeze
    EXITING_MAINTENANCE_MODE = "EXITING_MAINTENANCE_MODE".freeze
    NOT_IN_MAINTENANCE_MODE = "NOT_IN_MAINTENANCE_MODE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterClusterEdrsMaintenanceModeStatus.constants.select { |c| VcenterClusterEdrsMaintenanceModeStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterClusterEdrsMaintenanceModeStatus" if constantValues.empty?
      value
    end
  end
  end
end
