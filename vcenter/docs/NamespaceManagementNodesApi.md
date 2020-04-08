# VSphereAutomation::VCenter::NamespaceManagementNodesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enter_maintenance_mode**](NamespaceManagementNodesApi.md#enter_maintenance_mode) | **POST** /rest/vcenter/namespace-management/clusters/{cluster}/nodes?action&#x3D;enter_maintenance_mode | Enter Namespaces maintenance mode on the node. This operation removes Kubernetes pods from the given node and prevents further scheduling of pods on the node. This operation can be cancelled by calling exitMaintenanceMode operation on the node.
[**exit_maintenance_mode**](NamespaceManagementNodesApi.md#exit_maintenance_mode) | **POST** /rest/vcenter/namespace-management/clusters/{cluster}/nodes?action&#x3D;exit_maintenance_mode | Exit Namespaces maintenance mode on the node. This operation enables scheduling of Kubernetes pods on the node.


# **enter_maintenance_mode**
> VcenterNamespaceManagementNodesEnterMaintenanceModeResp enter_maintenance_mode(cluster, request_body)

Enter Namespaces maintenance mode on the node. This operation removes Kubernetes pods from the given node and prevents further scheduling of pods on the node. This operation can be cancelled by calling exitMaintenanceMode operation on the node.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementNodesApi.new
cluster = 'cluster_example' # String | Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
request_body = VCenter::VcenterNamespaceManagementNodesEnterMaintenanceMode.new # VcenterNamespaceManagementNodesEnterMaintenanceMode | 

begin
  #Enter Namespaces maintenance mode on the node. This operation removes Kubernetes pods from the given node and prevents further scheduling of pods on the node. This operation can be cancelled by calling exitMaintenanceMode operation on the node.
  result = api_instance.enter_maintenance_mode(cluster, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementNodesApi->enter_maintenance_mode: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | [**VcenterNamespaceManagementNodesEnterMaintenanceMode**](VcenterNamespaceManagementNodesEnterMaintenanceMode.md)|  | 

### Return type

[**VcenterNamespaceManagementNodesEnterMaintenanceModeResp**](VcenterNamespaceManagementNodesEnterMaintenanceModeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **exit_maintenance_mode**
> VcenterNamespaceManagementNodesExitMaintenanceModeResp exit_maintenance_mode(cluster, request_body)

Exit Namespaces maintenance mode on the node. This operation enables scheduling of Kubernetes pods on the node.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementNodesApi.new
cluster = 'cluster_example' # String | Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
request_body = VCenter::VcenterNamespaceManagementNodesExitMaintenanceMode.new # VcenterNamespaceManagementNodesExitMaintenanceMode | 

begin
  #Exit Namespaces maintenance mode on the node. This operation enables scheduling of Kubernetes pods on the node.
  result = api_instance.exit_maintenance_mode(cluster, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementNodesApi->exit_maintenance_mode: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **request_body** | [**VcenterNamespaceManagementNodesExitMaintenanceMode**](VcenterNamespaceManagementNodesExitMaintenanceMode.md)|  | 

### Return type

[**VcenterNamespaceManagementNodesExitMaintenanceModeResp**](VcenterNamespaceManagementNodesExitMaintenanceModeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



