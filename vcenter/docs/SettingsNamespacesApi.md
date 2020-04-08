# VSphereAutomation::VCenter::SettingsNamespacesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SettingsNamespacesApi.md#create) | **POST** /rest/vcenter/settings/namespaces | Creates a namespace. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](SettingsNamespacesApi.md#delete) | **DELETE** /rest/vcenter/settings/namespaces/{namespace} | Deletes a namespace along with its associated item data. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](SettingsNamespacesApi.md#get) | **GET** /rest/vcenter/settings/namespaces/{namespace} | Retrieves the details of the namespace. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](SettingsNamespacesApi.md#list) | **GET** /rest/vcenter/settings/namespaces | Lists all the namespaces in Settings Service. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](SettingsNamespacesApi.md#update) | **PATCH** /rest/vcenter/settings/namespaces/{namespace} | Update a namespace with a changing configuration. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> create(request_body)

Creates a namespace. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SettingsNamespacesApi.new
request_body = VCenter::VcenterSettingsNamespacesCreate.new # VcenterSettingsNamespacesCreate | 

begin
  #Creates a namespace. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.create(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsNamespacesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSettingsNamespacesCreate**](VcenterSettingsNamespacesCreate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(namespace)

Deletes a namespace along with its associated item data. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SettingsNamespacesApi.new
namespace = 'namespace_example' # String | namespace identifier

begin
  #Deletes a namespace along with its associated item data. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(namespace)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsNamespacesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| namespace identifier | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterSettingsNamespacesResp get(namespace)

Retrieves the details of the namespace. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SettingsNamespacesApi.new
namespace = 'namespace_example' # String | identifier of the namespace

begin
  #Retrieves the details of the namespace. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(namespace)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsNamespacesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| identifier of the namespace | 

### Return type

[**VcenterSettingsNamespacesResp**](VcenterSettingsNamespacesResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterSettingsNamespacesListResp list

Lists all the namespaces in Settings Service. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SettingsNamespacesApi.new

begin
  #Lists all the namespaces in Settings Service. System.Read privilege is required. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsNamespacesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterSettingsNamespacesListResp**](VcenterSettingsNamespacesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(namespace, request_body)

Update a namespace with a changing configuration. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SettingsNamespacesApi.new
namespace = 'namespace_example' # String | namespace identifier
request_body = VCenter::VcenterSettingsNamespacesUpdate.new # VcenterSettingsNamespacesUpdate | 

begin
  #Update a namespace with a changing configuration. Requires the SettingsStore.Manage privilege. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(namespace, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsNamespacesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| namespace identifier | 
 **request_body** | [**VcenterSettingsNamespacesUpdate**](VcenterSettingsNamespacesUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



