#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods for the Datacenter related operation
#---------------------------------------------------------------------------
require 'set'

# Returns the identifier of a Datacenter
class DatacenterHelper
  VCENTER_DATACENTER_CLASS = Com::Vmware::Vcenter::Datacenter

  class << self
    def get_datacenter(stub_config,datacenter_name)
      filter_spec = VCENTER_DATACENTER_CLASS::FilterSpec.new
      filter_spec.names = Set.new([datacenter_name])
      datacenter_svc = VCENTER_DATACENTER_CLASS.new(stub_config)
      datacenter_summaries = datacenter_svc.list(filter_spec)
 
      if datacenter_summaries.length > 0
        datacenter_id = datacenter_summaries[0].datacenter
        datacenter_id
      else
        puts "Datacenter #{datacenter_name} not found"
      end
    end
  end
end