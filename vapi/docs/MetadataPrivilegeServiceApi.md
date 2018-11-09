# VSphereAutomation::VAPI::MetadataPrivilegeServiceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataPrivilegeServiceApi.md#get) | **GET** /com/vmware/vapi/metadata/privilege/service/id:{service_id} | Retrieves privilege information about the service element corresponding to {@param.name serviceId}.
[**list**](MetadataPrivilegeServiceApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/service | Returns the identifiers for the service elements that have privilege information.


# **get**
> VapiMetadataPrivilegeServiceResult get(service_id)

Retrieves privilege information about the service element corresponding to {@param.name serviceId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeServiceApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Retrieves privilege information about the service element corresponding to {@param.name serviceId}.
  result = api_instance.get(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeServiceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataPrivilegeServiceResult**](VapiMetadataPrivilegeServiceResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataPrivilegeServiceListResult list

Returns the identifiers for the service elements that have privilege information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataPrivilegeServiceApi.new

begin
  #Returns the identifiers for the service elements that have privilege information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegeServiceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataPrivilegeServiceListResult**](VapiMetadataPrivilegeServiceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



