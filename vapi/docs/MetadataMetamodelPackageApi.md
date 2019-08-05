# VSphereAutomation::VAPI::MetadataMetamodelPackageApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataMetamodelPackageApi.md#get) | **GET** /com/vmware/vapi/metadata/metamodel/package/id:{package_id} | Retrieves information about the package element corresponding to {@param.name packageId}.
[**list**](MetadataMetamodelPackageApi.md#list) | **GET** /com/vmware/vapi/metadata/metamodel/package | Returns the identifiers for the packages elements that are contained in all the registered component elements.


# **get**
> VapiMetadataMetamodelPackageResult get(package_id)

Retrieves information about the package element corresponding to {@param.name packageId}.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelPackageApi.new
package_id = 'package_id_example' # String | Identifier of the package element.

begin
  #Retrieves information about the package element corresponding to {@param.name packageId}.
  result = api_instance.get(package_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelPackageApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**| Identifier of the package element. | 

### Return type

[**VapiMetadataMetamodelPackageResult**](VapiMetadataMetamodelPackageResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataMetamodelPackageListResult list

Returns the identifiers for the packages elements that are contained in all the registered component elements.

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

api_instance = VSphereAutomation::VAPI::MetadataMetamodelPackageApi.new

begin
  #Returns the identifiers for the packages elements that are contained in all the registered component elements.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataMetamodelPackageApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataMetamodelPackageListResult**](VapiMetadataMetamodelPackageListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



