# VSphereAutomation::VCenter::NamespacesSystemregistryInstancesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](NamespacesSystemregistryInstancesApi.md#create) | **POST** /rest/vcenter/namespaces/systemregistry/instances | Create a namespace object whose name prefixed with \&quot;vmware-system-registry\&quot; for an integrated registry in the cluster.
[**delete**](NamespacesSystemregistryInstancesApi.md#delete) | **DELETE** /rest/vcenter/namespaces/systemregistry/instances/{namespace} | Delete the namespace object created for an integrated registry in the cluster.


# **create**
> create(request_body)

Create a namespace object whose name prefixed with \"vmware-system-registry\" for an integrated registry in the cluster.

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

api_instance = VSphereAutomation::VCenter::NamespacesSystemregistryInstancesApi.new
request_body = VCenter::VcenterNamespacesSystemregistryInstancesCreate.new # VcenterNamespacesSystemregistryInstancesCreate | 

begin
  #Create a namespace object whose name prefixed with \"vmware-system-registry\" for an integrated registry in the cluster.
  api_instance.create(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesSystemregistryInstancesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterNamespacesSystemregistryInstancesCreate**](VcenterNamespacesSystemregistryInstancesCreate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(namespace)

Delete the namespace object created for an integrated registry in the cluster.

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

api_instance = VSphereAutomation::VCenter::NamespacesSystemregistryInstancesApi.new
namespace = 'namespace_example' # String | Identifier for the integrated registry namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.

begin
  #Delete the namespace object created for an integrated registry in the cluster.
  api_instance.delete(namespace)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesSystemregistryInstancesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the integrated registry namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



