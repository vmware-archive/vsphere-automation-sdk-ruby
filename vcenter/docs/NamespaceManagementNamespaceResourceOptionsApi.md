# VSphereAutomation::VCenter::NamespaceManagementNamespaceResourceOptionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NamespaceManagementNamespaceResourceOptionsApi.md#get) | **GET** /api/vcenter/namespace-management/clusters/{cluster}/workload-resource-options | Get the information about the objects used to set and update resource quota keys for version of Kubernetes running on {#link cluster}.


# **get**
> VcenterNamespaceManagementNamespaceResourceOptionsInfo get(cluster)

Get the information about the objects used to set and update resource quota keys for version of Kubernetes running on {#link cluster}.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementNamespaceResourceOptionsApi.new
cluster = 'cluster_example' # String | Identifier for the cluster hosting the namespace on which the resource quota needs to be set. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Get the information about the objects used to set and update resource quota keys for version of Kubernetes running on {#link cluster}.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementNamespaceResourceOptionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster hosting the namespace on which the resource quota needs to be set. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNamespaceManagementNamespaceResourceOptionsInfo**](VcenterNamespaceManagementNamespaceResourceOptionsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



