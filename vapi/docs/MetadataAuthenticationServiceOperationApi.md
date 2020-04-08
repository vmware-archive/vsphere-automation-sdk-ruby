# VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataAuthenticationServiceOperationApi.md#get) | **POST** /rest/com/vmware/vapi/metadata/authentication/service/operation/id:{service_id}?~action&#x3D;get | Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
[**list**](MetadataAuthenticationServiceOperationApi.md#list) | **GET** /rest/com/vmware/vapi/metadata/authentication/service/operation | Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have authentication information.


# **get**
> VapiMetadataAuthenticationServiceOperationResp get(service_id, request_body)

Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.

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

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi.new
service_id = 'service_id_example' # String | Identifier of the service element.
request_body = VAPI::VapiMetadataAuthenticationServiceOperationGet.new # VapiMetadataAuthenticationServiceOperationGet | 

begin
  #Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceOperationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 
 **request_body** | [**VapiMetadataAuthenticationServiceOperationGet**](VapiMetadataAuthenticationServiceOperationGet.md)|  | 

### Return type

[**VapiMetadataAuthenticationServiceOperationResp**](VapiMetadataAuthenticationServiceOperationResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VapiMetadataAuthenticationServiceOperationListResp list(service_id)

Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have authentication information.

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

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have authentication information.
  result = api_instance.list(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceOperationApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataAuthenticationServiceOperationListResp**](VapiMetadataAuthenticationServiceOperationListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



