# VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataAuthenticationServiceOperationApi.md#get) | **POST** /com/vmware/vapi/metadata/authentication/service/operation/id:{service_id} | Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
[**list**](MetadataAuthenticationServiceOperationApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/service/operation | Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have authentication information.


# **get**
> VapiMetadataAuthenticationServiceOperationResult get(service_id, action, request_body)

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
action = 'action_example' # String | ~action=get
request_body = VAPI::VapiMetadataAuthenticationServiceOperationGet.new # VapiMetadataAuthenticationServiceOperationGet | 

begin
  #Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id, action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceOperationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 
 **action** | **String**| ~action&#x3D;get | 
 **request_body** | [**VapiMetadataAuthenticationServiceOperationGet**](VapiMetadataAuthenticationServiceOperationGet.md)|  | 

### Return type

[**VapiMetadataAuthenticationServiceOperationResult**](VapiMetadataAuthenticationServiceOperationResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VapiMetadataAuthenticationServiceOperationListResult list(service_id)

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

[**VapiMetadataAuthenticationServiceOperationListResult**](VapiMetadataAuthenticationServiceOperationListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



