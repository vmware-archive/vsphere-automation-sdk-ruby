# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewNetworkingIpv6IPv6AddressStatus
    
    TENTATIVE = "tentative".freeze
    UNKNOWN = "unknown".freeze
    INACCESSIBLE = "inaccessible".freeze
    INVALID = "invalid".freeze
    DUPLICATE = "duplicate".freeze
    PREFERRED = "preferred".freeze
    DEPRECATED = "deprecated".freeze
    OPTIMISTIC = "optimistic".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceTechpreviewNetworkingIpv6IPv6AddressStatus.constants.select { |c| ApplianceTechpreviewNetworkingIpv6IPv6AddressStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceTechpreviewNetworkingIpv6IPv6AddressStatus" if constantValues.empty?
      value
    end
  end
  end
end
