# VSphereAutomation::VAPI::MetadataMetamodelServiceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelServiceApi.md#get) | **GET** /rest/com/vmware/vapi/metadata/metamodel/service/id:{service_id} | Retrieves information about the service element corresponding to {@param.name serviceId}. &lt;p&gt; The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.
[**list**](MetadataMetamodelServiceApi.md#list) | **GET** /rest/com/vmware/vapi/metadata/metamodel/service | Returns the identifiers for the service elements that are currently registered with the infrastructure. &lt;p&gt; The list of service elements is an aggregate list of all the service elements contained in all the package elements.


# **get**
> VapiMetadataMetamodelServiceResp get(service_id)

Retrieves information about the service element corresponding to {@param.name serviceId}. <p> The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.

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

[**VapiMetadataMetamodelServiceResp**](VapiMetadataMetamodelServiceResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataMetamodelServiceListResp list

Returns the identifiers for the service elements that are currently registered with the infrastructure. <p> The list of service elements is an aggregate list of all the service elements contained in all the package elements.

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

[**VapiMetadataMetamodelServiceListResp**](VapiMetadataMetamodelServiceListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



