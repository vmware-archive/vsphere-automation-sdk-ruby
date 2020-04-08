# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmToolsVersionStatus
    
    NOT_INSTALLED = "NOT_INSTALLED".freeze
    CURRENT = "CURRENT".freeze
    UNMANAGED = "UNMANAGED".freeze
    TOO_OLD_UNSUPPORTED = "TOO_OLD_UNSUPPORTED".freeze
    SUPPORTED_OLD = "SUPPORTED_OLD".freeze
    SUPPORTED_NEW = "SUPPORTED_NEW".freeze
    TOO_NEW = "TOO_NEW".freeze
    BLACKLISTED = "BLACKLISTED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmToolsVersionStatus.constants.select { |c| VcenterVmToolsVersionStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmToolsVersionStatus" if constantValues.empty?
      value
    end
  end
  end
end
