# VSphereAutomation::VAPI::MetadataMetamodelResourceModelApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](MetadataMetamodelResourceModelApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/resource/model | Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. &lt;p&gt; The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.


# **list**
> VapiMetadataMetamodelResourceModelListResult list(resource_id)

Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. <p> The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelResourceModelApi.new
resource_id = 'resource_id_example' # String | Identifier of the resource type.

begin
  #Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. <p> The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.
  result = api_instance.list(resource_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelResourceModelApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **String**| Identifier of the resource type. | 

### Return type

[**VapiMetadataMetamodelResourceModelListResult**](VapiMetadataMetamodelResourceModelListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



