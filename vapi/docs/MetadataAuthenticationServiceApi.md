# VSphereAutomation::VAPI::MetadataAuthenticationServiceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataAuthenticationServiceApi.md#get) | **GET** /rest/com/vmware/vapi/metadata/authentication/service/id:{service_id} | Retrieves authentication information about the service element corresponding to {@param.name serviceId}.
[**list**](MetadataAuthenticationServiceApi.md#list) | **GET** /rest/com/vmware/vapi/metadata/authentication/service | Returns the identifiers for the service elements that have authentication information.


# **get**
> VapiMetadataAuthenticationServiceResp get(service_id)

Retrieves authentication information about the service element corresponding to {@param.name serviceId}.

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

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationServiceApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Retrieves authentication information about the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataAuthenticationServiceResp**](VapiMetadataAuthenticationServiceResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataAuthenticationServiceListResp list

Returns the identifiers for the service elements that have authentication information.

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

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationServiceApi.new

begin
  #Returns the identifiers for the service elements that have authentication information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataAuthenticationServiceListResp**](VapiMetadataAuthenticationServiceListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



