# VSphereAutomation::VCenter::IdentityProvidersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](IdentityProvidersApi.md#create) | **POST** /rest/vcenter/identity/providers | Create a vCenter Server identity provider.
[**delete**](IdentityProvidersApi.md#delete) | **DELETE** /rest/vcenter/identity/providers/{provider} | Delete a vCenter Server identity provider.
[**get**](IdentityProvidersApi.md#get) | **GET** /rest/vcenter/identity/providers/{provider} | Retrieve detailed information of the specified identity provider.
[**list**](IdentityProvidersApi.md#list) | **GET** /rest/vcenter/identity/providers | Retrieve all identity providers.
[**update**](IdentityProvidersApi.md#update) | **PATCH** /rest/vcenter/identity/providers/{provider} | Update a vCenter Server identity provider.


# **create**
> VcenterIdentityProvidersCreateResp create(request_body)

Create a vCenter Server identity provider.

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

api_instance = VSphereAutomation::VCenter::IdentityProvidersApi.new
request_body = VCenter::VcenterIdentityProvidersCreate.new # VcenterIdentityProvidersCreate | 

begin
  #Create a vCenter Server identity provider.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityProvidersApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterIdentityProvidersCreate**](VcenterIdentityProvidersCreate.md)|  | 

### Return type

[**VcenterIdentityProvidersCreateResp**](VcenterIdentityProvidersCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(provider)

Delete a vCenter Server identity provider.

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

api_instance = VSphereAutomation::VCenter::IdentityProvidersApi.new
provider = 'provider_example' # String | the identifier of the provider to delete

begin
  #Delete a vCenter Server identity provider.
  api_instance.delete(provider)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityProvidersApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**| the identifier of the provider to delete | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterIdentityProvidersResp get(provider)

Retrieve detailed information of the specified identity provider.

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

api_instance = VSphereAutomation::VCenter::IdentityProvidersApi.new
provider = 'provider_example' # String | the identifier of the provider

begin
  #Retrieve detailed information of the specified identity provider.
  result = api_instance.get(provider)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityProvidersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**| the identifier of the provider | 

### Return type

[**VcenterIdentityProvidersResp**](VcenterIdentityProvidersResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterIdentityProvidersListResp list

Retrieve all identity providers.

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

api_instance = VSphereAutomation::VCenter::IdentityProvidersApi.new

begin
  #Retrieve all identity providers.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityProvidersApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterIdentityProvidersListResp**](VcenterIdentityProvidersListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(provider, request_body)

Update a vCenter Server identity provider.

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

api_instance = VSphereAutomation::VCenter::IdentityProvidersApi.new
provider = 'provider_example' # String | the identifier of the provider to update
request_body = VCenter::VcenterIdentityProvidersUpdate.new # VcenterIdentityProvidersUpdate | 

begin
  #Update a vCenter Server identity provider.
  api_instance.update(provider, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityProvidersApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**| the identifier of the provider to update | 
 **request_body** | [**VcenterIdentityProvidersUpdate**](VcenterIdentityProvidersUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



