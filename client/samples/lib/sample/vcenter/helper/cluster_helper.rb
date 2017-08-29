#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods for the Cluster related operation
#---------------------------------------------------------------------------
require 'set'
require 'sample/vcenter/helper/datacenter_helper'

# Returns the idenifier of a Cluster
class ClusterHelper
  VCENTER_CLUSTER_CLASS = Com::Vmware::Vcenter::Cluster
  class << self
    # Checks whether the datacenter exists before finding the Cluster Identifier
    def get_cluster(stub_config, datacenter_name, cluster_name)
      datacenter = DatacenterHelper.get_datacenter(stub_config, datacenter_name)
      if not datacenter
        puts "Datacenter #{datacenter_name} not found to proceed with the cluster #{cluster_name} details"
      end
      filter_spec = VCENTER_CLUSTER_CLASS::FilterSpec.new
      filter_spec.names = Set.new([cluster_name])
      filter_spec.datacenters = Set.new([datacenter])
      cluster_svc = VCENTER_CLUSTER_CLASS.new(stub_config)
      cluster_summaries = cluster_svc.list(filter_spec)
      if cluster_summaries.length > 0
        cluster_id = cluster_summaries[0].cluster
        puts "Cluster ID for the cluster name #{cluster_name} is #{cluster_id}"
        cluster_id
      else
      puts "Cluster #{cluster_name} not found"
      end
    end
  end
end