# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceEnvironmentProvider
    
    AWS = "AWS".freeze
    UNKNOWN = "UNKNOWN".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceEnvironmentProvider.constants.select { |c| ApplianceEnvironmentProvider::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceEnvironmentProvider" if constantValues.empty?
      value
    end
  end
  end
end
