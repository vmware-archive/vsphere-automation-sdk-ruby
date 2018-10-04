# VSphereAutomation::VAPI::MetadataMetamodelResourceModelApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](MetadataMetamodelResourceModelApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/resource/model | Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. &lt;p&gt; The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.


# **list**
> VapiMetadataMetamodelResourceModelListResult list

Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. <p> The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelResourceModelApi.new

begin
  #Returns the set of identifiers for the structure elements that are models for the resource type corresponding to {@param.name resourceId}. <p> The {@link vapi.metadata.metamodel.Structure} {@term service} provides {@term operations} to retrieve more details about the structure elements corresponding to the identifiers returned by this {@term operation}.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelResourceModelApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelResourceModelListResult**](VapiMetadataMetamodelResourceModelListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



