# VSphereAutomation::VCenter::NamespacesEventsEventsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NamespacesEventsEventsApi.md#get) | **GET** /rest/vcenter/namespaces/events/{namespace} | Returns Kubernetes events related to a specific namespace.


# **get**
> VcenterNamespacesEventsEventsResp get(namespace)

Returns Kubernetes events related to a specific namespace.

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

api_instance = VSphereAutomation::VCenter::NamespacesEventsEventsApi.new
namespace = 'namespace_example' # String | Identifier for the Namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.

begin
  #Returns Kubernetes events related to a specific namespace.
  result = api_instance.get(namespace)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesEventsEventsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the Namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 

### Return type

[**VcenterNamespacesEventsEventsResp**](VcenterNamespacesEventsEventsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



