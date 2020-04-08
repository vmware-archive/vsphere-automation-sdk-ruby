# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxMessageSeverity
    
    INFO = "INFO".freeze
    WARNING = "WARNING".freeze
    ERROR = "ERROR".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterNsxMessageSeverity.constants.select { |c| VcenterNsxMessageSeverity::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterNsxMessageSeverity" if constantValues.empty?
      value
    end
  end
  end
end
