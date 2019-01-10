# VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelEnumerationApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/enumeration/id:{enumeration_id} | Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. &lt;p&gt; The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
[**list**](MetadataMetamodelEnumerationApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/enumeration | Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.


# **get**
> VapiMetadataMetamodelEnumerationResult get(enumeration_id)

Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. <p> The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi.new
enumeration_id = 'enumeration_id_example' # String | Identifier of the enumeration element.

begin
  #Retrieves information about the enumeration element corresponding to {@param.name enumerationId}. <p> The {@link EnumerationInfo} contains the metamodel information about the enumeration value element contained in the enumeration element.
  result = api_instance.get(enumeration_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelEnumerationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enumeration_id** | **String**| Identifier of the enumeration element. | 

### Return type

[**VapiMetadataMetamodelEnumerationResult**](VapiMetadataMetamodelEnumerationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataMetamodelEnumerationListResult list

Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelEnumerationApi.new

begin
  #Returns the identifiers for the enumeration elements that are contained in all the package elements, service elements and structure elements.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelEnumerationApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelEnumerationListResult**](VapiMetadataMetamodelEnumerationListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



