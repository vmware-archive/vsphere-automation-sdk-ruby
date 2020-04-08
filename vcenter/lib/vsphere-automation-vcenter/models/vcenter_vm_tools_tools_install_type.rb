# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmToolsToolsInstallType
    
    UNKNOWN = "UNKNOWN".freeze
    MSI = "MSI".freeze
    TAR = "TAR".freeze
    OSP = "OSP".freeze
    OPEN_VM_TOOLS = "OPEN_VM_TOOLS".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmToolsToolsInstallType.constants.select { |c| VcenterVmToolsToolsInstallType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmToolsToolsInstallType" if constantValues.empty?
      value
    end
  end
  end
end
