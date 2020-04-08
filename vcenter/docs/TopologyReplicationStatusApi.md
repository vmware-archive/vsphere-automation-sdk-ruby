# VSphereAutomation::VCenter::TopologyReplicationStatusApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TopologyReplicationStatusApi.md#list) | **GET** /rest/vcenter/topology/replication-status | Returns the replication information of vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL (see Nodes.Info.type) matching the ReplicationStatus.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  


# **list**
> VcenterTopologyReplicationStatusListResp list(opts)

Returns the replication information of vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL (see Nodes.Info.type) matching the ReplicationStatus.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::TopologyReplicationStatusApi.new
opts = {
  filter_nodes: ['filter_nodes_example'] # Array<String> | Identifier that a vCenter and Platform Services Controller node must have to match the filter. (see ReplicationStatus.Summary.node). If unset or empty, all vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.VCenter.name.
}

begin
  #Returns the replication information of vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL (see Nodes.Info.type) matching the ReplicationStatus.FilterSpec. if you do not have all of the privileges described as follows:     -  Operation execution requires System.Read.  
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TopologyReplicationStatusApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_nodes** | [**Array&lt;String&gt;**](String.md)| Identifier that a vCenter and Platform Services Controller node must have to match the filter. (see ReplicationStatus.Summary.node). If unset or empty, all vCenter and Platform Services Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.VCenter.name. | [optional] 

### Return type

[**VcenterTopologyReplicationStatusListResp**](VcenterTopologyReplicationStatusListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



