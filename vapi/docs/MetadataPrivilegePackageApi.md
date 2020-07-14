# VSphereAutomation::VAPI::MetadataPrivilegePackageApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataPrivilegePackageApi.md#get) | **GET** /com/vmware/vapi/metadata/privilege/package/id:{package_id} | Retrieves privilege information about the package element corresponding to {@param.name packageId}.
[**list**](MetadataPrivilegePackageApi.md#list) | **GET** /com/vmware/vapi/metadata/privilege/package | Returns the identifiers for the package elements that have privilege information.


# **get**
> VapiMetadataPrivilegePackageResult get(package_id)

Retrieves privilege information about the package element corresponding to {@param.name packageId}.

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

api_instance = VSphereAutomation::VAPI::MetadataPrivilegePackageApi.new
package_id = 'package_id_example' # String | Identifier of the package element.

begin
  #Retrieves privilege information about the package element corresponding to {@param.name packageId}.
  result = api_instance.get(package_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegePackageApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**| Identifier of the package element. | 

### Return type

[**VapiMetadataPrivilegePackageResult**](VapiMetadataPrivilegePackageResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VapiMetadataPrivilegePackageListResult list

Returns the identifiers for the package elements that have privilege information.

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

api_instance = VSphereAutomation::VAPI::MetadataPrivilegePackageApi.new

begin
  #Returns the identifiers for the package elements that have privilege information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataPrivilegePackageApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataPrivilegePackageListResult**](VapiMetadataPrivilegePackageListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



