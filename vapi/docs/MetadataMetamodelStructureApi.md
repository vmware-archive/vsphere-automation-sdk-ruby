# VSphereAutomation::VAPI::MetadataMetamodelStructureApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelStructureApi.md#get) | **GET** /rest/com/vmware/vapi/metadata/metamodel/structure/id:{structure_id} | Retrieves information about the structure element corresponding to {@param.name structureId}. &lt;p&gt; The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.
[**list**](MetadataMetamodelStructureApi.md#list) | **GET** /rest/com/vmware/vapi/metadata/metamodel/structure | Returns the identifiers for the structure elements that are contained in all the package elements and service elements.


# **get**
> VapiMetadataMetamodelStructureResp get(structure_id)

Retrieves information about the structure element corresponding to {@param.name structureId}. <p> The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelStructureApi.new
structure_id = 'structure_id_example' # String | Identifier of the structure element.

begin
  #Retrieves information about the structure element corresponding to {@param.name structureId}. <p> The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.
  result = api_instance.get(structure_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelStructureApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structure_id** | **String**| Identifier of the structure element. | 

### Return type

[**VapiMetadataMetamodelStructureResp**](VapiMetadataMetamodelStructureResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataMetamodelStructureListResp list

Returns the identifiers for the structure elements that are contained in all the package elements and service elements.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelStructureApi.new

begin
  #Returns the identifiers for the structure elements that are contained in all the package elements and service elements.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelStructureApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelStructureListResp**](VapiMetadataMetamodelStructureListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



