# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'date'

module VSphereAutomation
  module Content
    class VapiStdLocalizationParamDateTimeFormat
    
    SHORT_DATE = "SHORT_DATE".freeze
    MED_DATE = "MED_DATE".freeze
    LONG_DATE = "LONG_DATE".freeze
    FULL_DATE = "FULL_DATE".freeze
    SHORT_TIME = "SHORT_TIME".freeze
    MED_TIME = "MED_TIME".freeze
    LONG_TIME = "LONG_TIME".freeze
    FULL_TIME = "FULL_TIME".freeze
    SHORT_DATE_TIME = "SHORT_DATE_TIME".freeze
    MED_DATE_TIME = "MED_DATE_TIME".freeze
    LONG_DATE_TIME = "LONG_DATE_TIME".freeze
    FULL_DATE_TIME = "FULL_DATE_TIME".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VapiStdLocalizationParamDateTimeFormat.constants.select { |c| VapiStdLocalizationParamDateTimeFormat::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VapiStdLocalizationParamDateTimeFormat" if constantValues.empty?
      value
    end
  end
  end
end
