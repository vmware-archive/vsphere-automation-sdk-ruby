# VSphereAutomation::VAPI::MetadataMetamodelResourceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](MetadataMetamodelResourceApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/resource | Returns the set of resource types present across all the service elements contained in all the package elements.


# **list**
> VapiMetadataMetamodelResourceListResult list

Returns the set of resource types present across all the service elements contained in all the package elements.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataMetamodelResourceApi.new

begin
  #Returns the set of resource types present across all the service elements contained in all the package elements.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelResourceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelResourceListResult**](VapiMetadataMetamodelResourceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



