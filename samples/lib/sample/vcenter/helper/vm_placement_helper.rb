#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods to get the placement spec of a Virtual Machine
#---------------------------------------------------------------------------

require 'set'
require 'sample/vcenter/helper/resourcepool_helper'
require 'sample/vcenter/helper/datastore_helper'
require 'sample/vcenter/helper/folder_helper'

#Returns the placementSpec of a VirtualMachine
class VMPlacementHelper
    VCENTER_MODULE = Com::Vmware::Vcenter
    VCENTER_VM_PLACEMENTSPEC_CLASS = VCENTER_MODULE::VM::PlacementSpec

    class << self
      def get_placementspec_vm(stub_config,datacenter_name, folder_name, datastore_name)    
        resource_pool_id = ResourcepoolHelper.get_resourcepool(stub_config, datacenter_name)
        folder_id = FolderHelper.get_folder(stub_config, datacenter_name, folder_name)
        datastore_id = DatastoreHelper.get_datastore(stub_config, datacenter_name, datastore_name)
        placement_spec = VCENTER_VM_PLACEMENTSPEC_CLASS.new
        placement_spec.folder = folder_id
        placement_spec.resource_pool = resource_pool_id
        placement_spec.datastore = datastore_id
        placement_spec
      end
    end
end