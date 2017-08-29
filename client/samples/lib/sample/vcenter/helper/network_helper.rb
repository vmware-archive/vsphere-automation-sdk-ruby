#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
# Helper Methods for the Network related operation
#---------------------------------------------------------------------------
require 'set'
require 'sample/vcenter/helper/datacenter_helper'

# Return the idenifier of the Network
class NetworkHelper
    VCENTER_NETWORK_CLASS = Com::Vmware::Vcenter::Network

    class << self
        def get_standard_network_mapping(stub_config, datacenter_name, standard_portgroup_name)
            # Checks whether the datacenter exists before finding the Network Identifier
            datacenter = DatacenterHelper.get_datacenter(stub_config, datacenter_name)    
            if not datacenter
              puts "Datacenter #{datacenter_name} not found to proceed with the cluster #{standard_portgroup_name} details"
            end
            filter_spec = VCENTER_NETWORK_CLASS::FilterSpec.new
            filter_spec.names = Set.new([standard_portgroup_name])
            filter_spec.datacenters = Set.new([datacenter])
            network_svc = VCENTER_NETWORK_CLASS.new(stub_config)
            network_summaries = network_svc.list(filter_spec)
            if network_summaries.length > 0
              network_id = network_summaries[0].network
              puts "Network ID for the Standard Portgroup Network name #{standard_portgroup_name} is #{network_id}"
              network_id
            else
            puts "Standard portgroup Network #{standard_portgroup_name} not found in the Datacenter #{datacenter_name}"
            end
        end
    end
end
