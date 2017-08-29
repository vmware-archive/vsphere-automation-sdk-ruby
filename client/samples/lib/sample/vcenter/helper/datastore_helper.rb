#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods for the Datastore related operation
#---------------------------------------------------------------------------
require 'set'
require 'sample/vcenter/helper/datacenter_helper'

# Return the idenifier of a Datastore
class DatastoreHelper
  VCENTER_DATASTORE_CLASS = Com::Vmware::Vcenter::Datastore

  class << self
    # Checks whether the datacenter exists before finding the Datastore Identifier
    def get_datastore(stub_config, datacenter_name, datastore_name)
      datacenter = DatacenterHelper.get_datacenter(stub_config, datacenter_name)
      if not datacenter
        puts "Datacenter #{datacenter_name} not found to proceed with the Datastore #{datastore_name} details"
      end
      filter_spec = VCENTER_DATASTORE_CLASS::FilterSpec.new
      filter_spec.names = Set.new([datastore_name])
      filter_spec.datacenters = datacenters = Set.new([datacenter])
      datastore_svc = VCENTER_DATASTORE_CLASS.new(stub_config)
      datastore_summaries = datastore_svc.list(filter_spec)
      if datastore_summaries.length > 0
        datastore_id = datastore_summaries[0].datastore
        puts "Datastore ID for the Datastore name #{datastore_name} is #{datastore_id}"
        datastore_id
      else
        puts "Datastore #{datastore_name} not found"
      end
    end
  end
end