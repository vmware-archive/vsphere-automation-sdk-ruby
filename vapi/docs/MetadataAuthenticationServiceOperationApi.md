# VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataAuthenticationServiceOperationApi.md#get) | **POST** /com/vmware/vapi/metadata/authentication/service/operation/id:{service_id}?~action&#x3D;get | Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
[**list**](MetadataAuthenticationServiceOperationApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/service/operation | Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have authentication information.


# **get**
> VapiMetadataAuthenticationServiceOperationResult get(service_id, vapi_metadata_authentication_service_operation_get)

Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationServiceOperationApi.new
service_id = 'service_id_example' # String | Identifier of the service element.
vapi_metadata_authentication_service_operation_get = VSphereAutomation::VapiMetadataAuthenticationServiceOperationGet.new # VapiMetadataAuthenticationServiceOperationGet | 

begin
  #Retrieves the authentication information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id, vapi_metadata_authentication_service_operation_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationServiceOperationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 
 **vapi_metadata_authentication_service_operation_get** | [**VapiMetadataAuthenticationServiceOperationGet**](VapiMetadataAuthenticationServiceOperationGet.md)|  | 

### Return type

[**VapiMetadataAuthenticationServiceOperationResult**](VapiMetadataAuthenticationServiceOperationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> VapiMetadataAuthenticationServiceOperationListResult list(service_id)

Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have authentication information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



