# VSphereAutomation::VAPI::MetadataMetamodelServiceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelServiceApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/service/id:{service_id} | Retrieves information about the service element corresponding to {@param.name serviceId}. &lt;p&gt; The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.
[**list**](MetadataMetamodelServiceApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/service | Returns the identifiers for the service elements that are currently registered with the infrastructure. &lt;p&gt; The list of service elements is an aggregate list of all the service elements contained in all the package elements.


# **get**
> VapiMetadataMetamodelServiceResult get(service_id)

Retrieves information about the service element corresponding to {@param.name serviceId}. <p> The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelServiceApi.new
service_id = 'service_id_example' # String | Identifier of the service element.

begin
  #Retrieves information about the service element corresponding to {@param.name serviceId}. <p> The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.
  result = api_instance.get(service_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelServiceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_id** | **String**| Identifier of the service element. | 

### Return type

[**VapiMetadataMetamodelServiceResult**](VapiMetadataMetamodelServiceResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataMetamodelServiceListResult list

Returns the identifiers for the service elements that are currently registered with the infrastructure. <p> The list of service elements is an aggregate list of all the service elements contained in all the package elements.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelServiceApi.new

begin
  #Returns the identifiers for the service elements that are currently registered with the infrastructure. <p> The list of service elements is an aggregate list of all the service elements contained in all the package elements.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelServiceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelServiceListResult**](VapiMetadataMetamodelServiceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



