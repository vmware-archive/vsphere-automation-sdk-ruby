=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterDatastoreType
    
    VMFS = 'VMFS'.freeze
    NFS = 'NFS'.freeze
    NFS41 = 'NFS41'.freeze
    CIFS = 'CIFS'.freeze
    VSAN = 'VSAN'.freeze
    VFFS = 'VFFS'.freeze
    VVOL = 'VVOL'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterDatastoreType.constants.select { |c| VcenterDatastoreType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterDatastoreType" if constantValues.empty?
      value
    end
  end
  end
end
