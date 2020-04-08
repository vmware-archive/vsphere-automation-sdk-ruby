# VSphereAutomation::VCenter::NamespacesInstancesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](NamespacesInstancesApi.md#create) | **POST** /api/vcenter/namespaces/instances | Create namespace object in the cluster.
[**delete**](NamespacesInstancesApi.md#delete) | **DELETE** /api/vcenter/namespaces/instances/{namespace} | Delete the namespace object in the cluster.
[**get**](NamespacesInstancesApi.md#get) | **GET** /api/vcenter/namespaces/instances/{namespace} | Returns information about a specific namespace.
[**list**](NamespacesInstancesApi.md#list) | **GET** /api/vcenter/namespaces/instances | Returns the information about all namespaces on this vCenter.
[**set**](NamespacesInstancesApi.md#set) | **PUT** /api/vcenter/namespaces/instances/{namespace} | Set a new configuration on the namespace object. The specified configuration is applied in entirety and will replace the current configuration fully.
[**update**](NamespacesInstancesApi.md#update) | **PATCH** /api/vcenter/namespaces/instances/{namespace} | Update the namespace object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.


# **create**
> create(opts)

Create namespace object in the cluster.

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

api_instance = VSphereAutomation::VCenter::NamespacesInstancesApi.new
opts = {
  request_body: VCenter::VcenterNamespacesInstancesCreateSpec.new # VcenterNamespacesInstancesCreateSpec | 
}

begin
  #Create namespace object in the cluster.
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesInstancesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNamespacesInstancesCreateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(namespace)

Delete the namespace object in the cluster.

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

api_instance = VSphereAutomation::VCenter::NamespacesInstancesApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.

begin
  #Delete the namespace object in the cluster.
  api_instance.delete(namespace)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesInstancesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterNamespacesInstancesInfo get(namespace)

Returns information about a specific namespace.

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

api_instance = VSphereAutomation::VCenter::NamespacesInstancesApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.

begin
  #Returns information about a specific namespace.
  result = api_instance.get(namespace)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesInstancesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 

### Return type

[**VcenterNamespacesInstancesInfo**](VcenterNamespacesInstancesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VcenterNamespacesInstancesSummary&gt; list

Returns the information about all namespaces on this vCenter.

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

api_instance = VSphereAutomation::VCenter::NamespacesInstancesApi.new

begin
  #Returns the information about all namespaces on this vCenter.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesInstancesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterNamespacesInstancesSummary&gt;**](VcenterNamespacesInstancesSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(namespace, opts)

Set a new configuration on the namespace object. The specified configuration is applied in entirety and will replace the current configuration fully.

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

api_instance = VSphereAutomation::VCenter::NamespacesInstancesApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
opts = {
  request_body: VCenter::VcenterNamespacesInstancesSetSpec.new # VcenterNamespacesInstancesSetSpec | 
}

begin
  #Set a new configuration on the namespace object. The specified configuration is applied in entirety and will replace the current configuration fully.
  api_instance.set(namespace, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesInstancesApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 
 **request_body** | **VcenterNamespacesInstancesSetSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(namespace, opts)

Update the namespace object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.

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

api_instance = VSphereAutomation::VCenter::NamespacesInstancesApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
opts = {
  request_body: VCenter::VcenterNamespacesInstancesUpdateSpec.new # VcenterNamespacesInstancesUpdateSpec | 
}

begin
  #Update the namespace object. The specified configuration is applied partially and unset fields in spec will leave those parts of configuration as-is.
  api_instance.update(namespace, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesInstancesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 
 **request_body** | **VcenterNamespacesInstancesUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



