# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterGuestIpv6Type
    
    DHCP = "DHCP".freeze
    STATIC = "STATIC".freeze
    USER_INPUT_REQUIRED = "USER_INPUT_REQUIRED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterGuestIpv6Type.constants.select { |c| VcenterGuestIpv6Type::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterGuestIpv6Type" if constantValues.empty?
      value
    end
  end
  end
end
