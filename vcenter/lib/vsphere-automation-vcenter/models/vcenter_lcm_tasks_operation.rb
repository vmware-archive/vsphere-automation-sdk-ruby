# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterLcmTasksOperation
    
    INSTALL_DEPLOY = "INSTALL_DEPLOY".freeze
    INSTALL_PRECHECK = "INSTALL_PRECHECK".freeze
    UPGRADE_DEPLOY = "UPGRADE_DEPLOY".freeze
    UPGRADE_PRECHECK = "UPGRADE_PRECHECK".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterLcmTasksOperation.constants.select { |c| VcenterLcmTasksOperation::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterLcmTasksOperation" if constantValues.empty?
      value
    end
  end
  end
end
