=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceNetworkingInterfacesIpv6Status
    
    TENTATIVE = 'TENTATIVE'.freeze
    UNKNOWN = 'UNKNOWN'.freeze
    INACCESSIBLE = 'INACCESSIBLE'.freeze
    INVALID = 'INVALID'.freeze
    DUPLICATE = 'DUPLICATE'.freeze
    PREFERRED = 'PREFERRED'.freeze
    DEPRECATED = 'DEPRECATED'.freeze
    OPTIMISTIC = 'OPTIMISTIC'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceNetworkingInterfacesIpv6Status.constants.select { |c| ApplianceNetworkingInterfacesIpv6Status::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceNetworkingInterfacesIpv6Status" if constantValues.empty?
      value
    end
  end
  end
end
