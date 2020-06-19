# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module ESX
    class EsxSettingsDepotsSyncScheduleDayOfWeek
    
    SUNDAY = "SUNDAY".freeze
    MONDAY = "MONDAY".freeze
    TUESDAY = "TUESDAY".freeze
    WEDNESDAY = "WEDNESDAY".freeze
    THURSDAY = "THURSDAY".freeze
    FRIDAY = "FRIDAY".freeze
    SATURDAY = "SATURDAY".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EsxSettingsDepotsSyncScheduleDayOfWeek.constants.select { |c| EsxSettingsDepotsSyncScheduleDayOfWeek::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EsxSettingsDepotsSyncScheduleDayOfWeek" if constantValues.empty?
      value
    end
  end
  end
end