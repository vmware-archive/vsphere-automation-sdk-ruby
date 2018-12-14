=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareAdapterScsiType
    
    BUSLOGIC = 'BUSLOGIC'.freeze
    LSILOGIC = 'LSILOGIC'.freeze
    LSILOGICSAS = 'LSILOGICSAS'.freeze
    PVSCSI = 'PVSCSI'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareAdapterScsiType.constants.select { |c| VcenterVmHardwareAdapterScsiType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareAdapterScsiType" if constantValues.empty?
      value
    end
  end
  end
end
