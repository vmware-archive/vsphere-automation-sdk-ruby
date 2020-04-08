# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterIdentityProvidersOauth2AuthenticationMethod
    
    CLIENT_SECRET_BASIC = "CLIENT_SECRET_BASIC".freeze
    CLIENT_SECRET_POST = "CLIENT_SECRET_POST".freeze
    CLIENT_SECRET_JWT = "CLIENT_SECRET_JWT".freeze
    PRIVATE_KEY_JWT = "PRIVATE_KEY_JWT".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterIdentityProvidersOauth2AuthenticationMethod.constants.select { |c| VcenterIdentityProvidersOauth2AuthenticationMethod::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterIdentityProvidersOauth2AuthenticationMethod" if constantValues.empty?
      value
    end
  end
  end
end
