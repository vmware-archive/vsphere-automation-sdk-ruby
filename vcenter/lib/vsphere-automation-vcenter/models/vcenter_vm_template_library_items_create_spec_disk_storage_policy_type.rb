=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicyType
    
    USE_SPECIFIED_POLICY = 'USE_SPECIFIED_POLICY'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicyType.constants.select { |c| VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicyType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmTemplateLibraryItemsCreateSpecDiskStoragePolicyType" if constantValues.empty?
      value
    end
  end
  end
end
