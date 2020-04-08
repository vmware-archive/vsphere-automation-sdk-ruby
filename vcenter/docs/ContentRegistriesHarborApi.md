# VSphereAutomation::VCenter::ContentRegistriesHarborApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentRegistriesHarborApi.md#create) | **POST** /rest/vcenter/content/registries/harbor | Creates a Harbor registry in the cluster.
[**delete**](ContentRegistriesHarborApi.md#delete) | **DELETE** /rest/vcenter/content/registries/harbor/{registry} | Delete the Harbor registry in the cluster. All Harbor projects, repositories and images will be deleted upon Harbor registry deletion.
[**get**](ContentRegistriesHarborApi.md#get) | **GET** /rest/vcenter/content/registries/harbor/{registry} | Get detailed information of the Harbor registry.
[**list**](ContentRegistriesHarborApi.md#list) | **GET** /rest/vcenter/content/registries/harbor | Returns basic information of all Harbor registries.


# **create**
> VcenterContentRegistriesHarborCreateResp create(request_body)

Creates a Harbor registry in the cluster.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborApi.new
request_body = VCenter::VcenterContentRegistriesHarborCreate.new # VcenterContentRegistriesHarborCreate | 

begin
  #Creates a Harbor registry in the cluster.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterContentRegistriesHarborCreate**](VcenterContentRegistriesHarborCreate.md)|  | 

### Return type

[**VcenterContentRegistriesHarborCreateResp**](VcenterContentRegistriesHarborCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(registry)

Delete the Harbor registry in the cluster. All Harbor projects, repositories and images will be deleted upon Harbor registry deletion.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborApi.new
registry = 'registry_example' # String | Identifier of the registry.

begin
  #Delete the Harbor registry in the cluster. All Harbor projects, repositories and images will be deleted upon Harbor registry deletion.
  api_instance.delete(registry)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the registry. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterContentRegistriesHarborResp get(registry)

Get detailed information of the Harbor registry.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborApi.new
registry = 'registry_example' # String | Identifier of the registry.

begin
  #Get detailed information of the Harbor registry.
  result = api_instance.get(registry)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the registry. | 

### Return type

[**VcenterContentRegistriesHarborResp**](VcenterContentRegistriesHarborResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterContentRegistriesHarborListResp list

Returns basic information of all Harbor registries.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborApi.new

begin
  #Returns basic information of all Harbor registries.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterContentRegistriesHarborListResp**](VcenterContentRegistriesHarborListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



