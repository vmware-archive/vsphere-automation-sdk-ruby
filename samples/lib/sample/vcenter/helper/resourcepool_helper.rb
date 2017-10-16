#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods for the ResourcePool related operation
#---------------------------------------------------------------------------
require 'set'
require 'sample/vcenter/helper/datacenter_helper'

# Returns the identifier of the Resourcepool
class ResourcepoolHelper
  VCENTER_RESOURCEPOOL_CLASS = Com::Vmware::Vcenter::ResourcePool

  class << self
    def get_resourcepool(stub_config,datacenter_name)
      # Checks whether the datacenter exists before finding the ResourcePool Identifier    
      datacenter = DatacenterHelper.get_datacenter(stub_config, datacenter_name)    
      if not datacenter
          puts "Datacenter #{datacenter_name} not found to fetch Resource Pool Details"
      end
      filter_spec = VCENTER_RESOURCEPOOL_CLASS::FilterSpec.new
      filter_spec.datacenters = Set.new([datacenter])  
      resourcepool_svc = VCENTER_RESOURCEPOOL_CLASS.new(stub_config)
      resourcepool_summaries = resourcepool_svc.list(filter_spec)
      if resourcepool_summaries.length > 0
        resourcepool_id= resourcepool_summaries[0].resource_pool
        puts "ResourcePool ID is #{resourcepool_id}"
        resourcepool_id
      else
        puts "Resourcepool #{datacenter_name} not found"
      end
    end
  end
end