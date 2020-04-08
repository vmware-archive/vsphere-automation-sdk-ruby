# VSphereAutomation::VCenter::TopologyNodesEmbeddedApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**decommission_task**](TopologyNodesEmbeddedApi.md#decommission_task) | **POST** /rest/vcenter/topology/nodes/embedded/{hostname}?action&#x3D;decommission&amp;vmw-task&#x3D;true | Decommission the vCenter Server node. Decommissioning a vCenter Server node from the topology is irreversible. Any workloads associated with the node will be lost. Make sure to move the workloads before decommissioning the vCenter Server node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **decommission_task**
> VcenterTopologyNodesEmbeddedDecommissionTaskResp decommission_task(hostname, request_body)

Decommission the vCenter Server node. Decommissioning a vCenter Server node from the topology is irreversible. Any workloads associated with the node will be lost. Make sure to move the workloads before decommissioning the vCenter Server node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TopologyNodesEmbeddedApi.new
hostname = 'hostname_example' # String | FQDN or IP address of vCenter Server node to be decommissioned.
request_body = VCenter::VcenterTopologyNodesEmbeddedDecommissionTask.new # VcenterTopologyNodesEmbeddedDecommissionTask | 

begin
  #Decommission the vCenter Server node. Decommissioning a vCenter Server node from the topology is irreversible. Any workloads associated with the node will be lost. Make sure to move the workloads before decommissioning the vCenter Server node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.decommission_task(hostname, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TopologyNodesEmbeddedApi->decommission_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hostname** | **String**| FQDN or IP address of vCenter Server node to be decommissioned. | 
 **request_body** | [**VcenterTopologyNodesEmbeddedDecommissionTask**](VcenterTopologyNodesEmbeddedDecommissionTask.md)|  | 

### Return type

[**VcenterTopologyNodesEmbeddedDecommissionTaskResp**](VcenterTopologyNodesEmbeddedDecommissionTaskResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



