# VSphereAutomation::VCenter::NamespaceManagementDistributedSwitchCompatibilityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NamespaceManagementDistributedSwitchCompatibilityApi.md#list) | **GET** /api/vcenter/namespace-management/distributed-switch-compatibility | Returns Namespaces compatibility information of Distributed Switches in vCenter associated with the vCenter cluster, matching the DistributedSwitchCompatibility.FilterSpec.


# **list**
> Array&lt;VcenterNamespaceManagementDistributedSwitchCompatibilitySummary&gt; list(cluster, opts)

Returns Namespaces compatibility information of Distributed Switches in vCenter associated with the vCenter cluster, matching the DistributedSwitchCompatibility.FilterSpec.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementDistributedSwitchCompatibilityApi.new
cluster = 'cluster_example' # String | Identifier of a vCenter Cluster. Only Distributed Switches associated with the vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource.
opts = {
  compatible: true # Boolean | Compatibility criteria for matching the filter. If true, only Distributed Switches which are compatible with vSphere Namespaces match the filter. If false, only Distributed Switches which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Distributed Switches match the filter.
}

begin
  #Returns Namespaces compatibility information of Distributed Switches in vCenter associated with the vCenter cluster, matching the DistributedSwitchCompatibility.FilterSpec.
  result = api_instance.list(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementDistributedSwitchCompatibilityApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of a vCenter Cluster. Only Distributed Switches associated with the vCenter Cluster will be considered by the filter. The parameter must be an identifier for the resource type: ClusterComputeResource. | 
 **compatible** | **Boolean**| Compatibility criteria for matching the filter. If true, only Distributed Switches which are compatible with vSphere Namespaces match the filter. If false, only Distributed Switches which are incompatible with vSphere Namespaces match the filter. If unset, both compatible and incompatible Distributed Switches match the filter. | [optional] 

### Return type

[**Array&lt;VcenterNamespaceManagementDistributedSwitchCompatibilitySummary&gt;**](VcenterNamespaceManagementDistributedSwitchCompatibilitySummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



