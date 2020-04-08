# VSphereAutomation::VCenter::NamespaceManagementEventsEventsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NamespaceManagementEventsEventsApi.md#get) | **GET** /rest/vcenter/namespace-management/events/{cluster} | Returns Kubernetes events related to a specific cluster.


# **get**
> VcenterNamespaceManagementEventsEventsResp get(cluster)

Returns Kubernetes events related to a specific cluster.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementEventsEventsApi.new
cluster = 'cluster_example' # String | Identifier for the cluster on which Namespaces are enabled. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Returns Kubernetes events related to a specific cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementEventsEventsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster on which Namespaces are enabled. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterNamespaceManagementEventsEventsResp**](VcenterNamespaceManagementEventsEventsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



