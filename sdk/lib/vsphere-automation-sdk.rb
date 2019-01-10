=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vSphere Automation

# VMware vSphere Automation does fantastic things.


=end

# Common files
require 'vsphere-automation-sdk/api_client'
require 'vsphere-automation-sdk/api_error'
require 'vsphere-automation-sdk/version'
require 'vsphere-automation-sdk/configuration'

# Models

# APIs

module VSphereAutomation
  class << self
    # Customize default settings for the SDK using block.
    #   VSphereAutomation.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
