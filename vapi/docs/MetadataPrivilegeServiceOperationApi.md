# VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataPrivilegeServiceOperationApi.md#get) | **POST** /com/vmware/vapi/metadata/privilege/service/operation/id:{service_id}?~action&#x3D;get | Retrieves the privilege information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
[**list**](MetadataPrivilegeServiceOperationApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/service/operation | Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have privilege information.


# **get**
> VapiMetadataPrivilegeServiceOperationResult get(service_id, vapi_metadata_privilege_service_operation_get)

Retrieves the privilege information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi.new
service_id = 'service_id_example' # String | Identifier of the service element.
vapi_metadata_privilege_service_operation_get = VSphereAutomation::VapiMetadataPrivilegeServiceOperationGet.new # VapiMetadataPrivilegeServiceOperationGet | 

begin
  #Retrieves the privilege information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id, vapi_metadata_privilege_service_operation_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeServiceOperationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 
 **vapi_metadata_privilege_service_operation_get** | [**VapiMetadataPrivilegeServiceOperationGet**](VapiMetadataPrivilegeServiceOperationGet.md)|  | 

### Return type

[**VapiMetadataPrivilegeServiceOperationResult**](VapiMetadataPrivilegeServiceOperationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> VapiMetadataPrivilegeServiceOperationListResult list(service_id)

Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have privilege information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have privilege information.
  result = api_instance.list(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeServiceOperationApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataPrivilegeServiceOperationListResult**](VapiMetadataPrivilegeServiceOperationListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



