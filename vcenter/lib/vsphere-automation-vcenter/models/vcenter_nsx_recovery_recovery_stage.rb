# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxRecoveryRecoveryStage
    
    NONE = "NONE".freeze
    SERVICE_ACCOUNT_PASSWD_RESET = "SERVICE_ACCOUNT_PASSWD_RESET".freeze
    NSX_LOCATE = "NSX_LOCATE".freeze
    NSX_INSTALL = "NSX_INSTALL".freeze
    PREPARE_NSXD = "PREPARE_NSXD".freeze
    DONE = "DONE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterNsxRecoveryRecoveryStage.constants.select { |c| VcenterNsxRecoveryRecoveryStage::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterNsxRecoveryRecoveryStage" if constantValues.empty?
      value
    end
  end
  end
end
