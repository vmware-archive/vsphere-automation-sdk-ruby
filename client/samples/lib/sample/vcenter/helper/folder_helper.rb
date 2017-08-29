#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods for the Folder related operations
#---------------------------------------------------------------------------
require 'set'
require 'sample/vcenter/helper/datacenter_helper'

# Return the idenifier of a Folder
class FolderHelper
  VCENTER_FOLDER_CLASS = Com::Vmware::Vcenter::Folder

  class << self
    def get_folder(stub_config, datacenter_name, folder_name)
      datacenter = DatacenterHelper.get_datacenter(stub_config, datacenter_name)
      # Checks whether the datacenter exists before finding the VM Folder Identifier    
      if not datacenter
        puts "Datacenter #{datacenter_name} not found to proceed with the Folder #{folder_name} details"
      end
      filter_spec = VCENTER_FOLDER_CLASS::FilterSpec.new()
      filter_spec.type = Com::Vmware::Vcenter::Folder::Type::VIRTUAL_MACHINE
      filter_spec.datacenters = Set.new([datacenter])
      filter_spec.names = Set.new([folder_name])
      folder_svc = VCENTER_FOLDER_CLASS.new(stub_config)
      folder_summaries = folder_svc.list(filter_spec)
      if folder_summaries.length > 0
        folder_id = folder_summaries[0].folder
        puts "Folder ID for the Folder name #{folder_name} is #{folder_id}"
        folder_id
      else
        puts "Folder #{folder_name} not found in Datacenter #{datacenter_name}"
      end   
    end
  end
end