# VSphereAutomation::VAPI::MetadataMetamodelServiceOperationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelServiceOperationApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/service/operation/id:{service_id}/id:{operation_id} | Retrieves the metamodel information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
[**list**](MetadataMetamodelServiceOperationApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/service/operation | Returns the identifiers for the operation elements that are defined in the scope of {@param.name serviceId}.


# **get**
> VapiMetadataMetamodelServiceOperationResult get(service_id, operation_id)

Retrieves the metamodel information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelServiceOperationApi.new
service_id = 'service_id_example' # String | Identifier of the service element.
operation_id = 'operation_id_example' # String | Identifier of the operation element.

begin
  #Retrieves the metamodel information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id, operation_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelServiceOperationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 
 **operation_id** | **String**| Identifier of the operation element. | 

### Return type

[**VapiMetadataMetamodelServiceOperationResult**](VapiMetadataMetamodelServiceOperationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataMetamodelServiceOperationListResult list(service_id)

Returns the identifiers for the operation elements that are defined in the scope of {@param.name serviceId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelServiceOperationApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Returns the identifiers for the operation elements that are defined in the scope of {@param.name serviceId}.
  result = api_instance.list(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelServiceOperationApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataMetamodelServiceOperationListResult**](VapiMetadataMetamodelServiceOperationListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



