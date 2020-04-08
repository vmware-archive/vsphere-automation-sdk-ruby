# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceTechpreviewLocalaccountsUserUserPasswordStatus
    
    NOTSET = "notset".freeze
    EXPIRED = "expired".freeze
    VALID = "valid".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceTechpreviewLocalaccountsUserUserPasswordStatus.constants.select { |c| ApplianceTechpreviewLocalaccountsUserUserPasswordStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceTechpreviewLocalaccountsUserUserPasswordStatus" if constantValues.empty?
      value
    end
  end
  end
end
