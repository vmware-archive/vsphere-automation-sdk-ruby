# VSphereAutomation::VCenter::NamespaceManagementEdgeClusterCompatibilityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NamespaceManagementEdgeClusterCompatibilityApi.md#list) | **GET** /api/vcenter/namespace-management/edge-cluster-compatibility | Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec.


# **list**
> Array&lt;VcenterNamespaceManagementEdgeClusterCompatibilitySummary&gt; list(cluster, distributed_switch, opts)

Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementEdgeClusterCompatibilityApi.new
cluster = 'cluster_example' # String | Identifier of a vCenter Cluster. Only Edge Clusters that are associated with the particular vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource.
distributed_switch = 'distributed_switch_example' # String | Identifier of a Distributed Switch. Only Edge Clusters that are associated with the particular Distributed Switch will be considered by the filter. The parameter must be an identifier for the resource type: vSphereDistributedSwitch.
opts = {
  compatible: true # Boolean | Compatibility criteria for matching the filter. If true, only Edge Clusters which are compatible with vSphere Namespaces match the filter. If false, only Edge Clusters which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Edge Clusters match the filter.
}

begin
  #Returns Namespaces compatibility information of NSX-T Edge Clusters matching the EdgeClusterCompatibility.FilterSpec.
  result = api_instance.list(cluster, distributed_switch, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementEdgeClusterCompatibilityApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of a vCenter Cluster. Only Edge Clusters that are associated with the particular vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **distributed_switch** | **String**| Identifier of a Distributed Switch. Only Edge Clusters that are associated with the particular Distributed Switch will be considered by the filter. The parameter must be an identifier for the resource type: vSphereDistributedSwitch. | 
 **compatible** | **Boolean**| Compatibility criteria for matching the filter. If true, only Edge Clusters which are compatible with vSphere Namespaces match the filter. If false, only Edge Clusters which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Edge Clusters match the filter. | [optional] 

### Return type

[**Array&lt;VcenterNamespaceManagementEdgeClusterCompatibilitySummary&gt;**](VcenterNamespaceManagementEdgeClusterCompatibilitySummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



