# VSphereAutomation::VAPI::MetadataMetamodelStructureApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelStructureApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/structure/id:{structure_id} | Retrieves information about the structure element corresponding to {@param.name structureId}. &lt;p&gt; The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.
[**list**](MetadataMetamodelStructureApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/structure | Returns the identifiers for the structure elements that are contained in all the package elements and service elements.


# **get**
> VapiMetadataMetamodelStructureResult get(structure_id)

Retrieves information about the structure element corresponding to {@param.name structureId}. <p> The {@link StructureInfo} contains the metamodel information about the structure element. It contains information about all the field elements and enumeration elements contained in this structure element.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

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

[**VapiMetadataMetamodelStructureResult**](VapiMetadataMetamodelStructureResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataMetamodelStructureListResult list

Returns the identifiers for the structure elements that are contained in all the package elements and service elements.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

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

[**VapiMetadataMetamodelStructureListResult**](VapiMetadataMetamodelStructureListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



