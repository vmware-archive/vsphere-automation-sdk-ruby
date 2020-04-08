# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxEdgeClustersStatusConfigStatus
    
    ENABLING = "ENABLING".freeze
    RUNNING = "RUNNING".freeze
    FAILED = "FAILED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterNsxEdgeClustersStatusConfigStatus.constants.select { |c| VcenterNsxEdgeClustersStatusConfigStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterNsxEdgeClustersStatusConfigStatus" if constantValues.empty?
      value
    end
  end
  end
end
