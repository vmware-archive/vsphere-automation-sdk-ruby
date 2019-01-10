=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterFolderType
    
    DATACENTER = 'DATACENTER'.freeze
    DATASTORE = 'DATASTORE'.freeze
    HOST = 'HOST'.freeze
    NETWORK = 'NETWORK'.freeze
    VIRTUAL_MACHINE = 'VIRTUAL_MACHINE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterFolderType.constants.select { |c| VcenterFolderType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterFolderType" if constantValues.empty?
      value
    end
  end
  end
end
