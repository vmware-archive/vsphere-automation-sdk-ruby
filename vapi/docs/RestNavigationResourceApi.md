# VSphereAutomation::VAPI::RestNavigationResourceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationResourceApi.md#get) | **GET** /com/vmware/vapi/rest/navigation/resource/id:{type_id}/id:{instance_id} | Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
[**list**](RestNavigationResourceApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/resource | Gets list of all vAPI REST {@link Resource}s.


# **get**
> VapiRestNavigationResourceResult get(type_id, instance_id, opts)

Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::RestNavigationResourceApi.new
type_id = 'type_id_example' # String | Resource type id.
instance_id = 'instance_id_example' # String | Resource instance id.
opts = {
  base_url: 'base_url_example' # String | Base URL.
}

begin
  #Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
  result = api_instance.get(type_id, instance_id, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationResourceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **String**| Resource type id. | 
 **instance_id** | **String**| Resource instance id. | 
 **base_url** | **String**| Base URL. | [optional] 

### Return type

[**VapiRestNavigationResourceResult**](VapiRestNavigationResourceResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiRestNavigationResourceListResult list(opts)

Gets list of all vAPI REST {@link Resource}s.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::RestNavigationResourceApi.new
opts = {
  base_url: 'base_url_example' # String | Base URL.
}

begin
  #Gets list of all vAPI REST {@link Resource}s.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationResourceApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **base_url** | **String**| Base URL. | [optional] 

### Return type

[**VapiRestNavigationResourceListResult**](VapiRestNavigationResourceListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



