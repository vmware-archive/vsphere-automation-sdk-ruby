# VSphereAutomation::VAPI::MetadataMetamodelResourceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](MetadataMetamodelResourceApi.md#list) | **GET** /rest/com/vmware/vapi/metadata/metamodel/resource | Returns the set of resource types present across all the service elements contained in all the package elements.


# **list**
> VapiMetadataMetamodelResourceListResp list

Returns the set of resource types present across all the service elements contained in all the package elements.

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

[**VapiMetadataMetamodelResourceListResp**](VapiMetadataMetamodelResourceListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



