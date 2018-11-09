# VSphereAutomation::VAPI::MetadataAuthenticationPackageApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MetadataAuthenticationPackageApi.md#get) | **GET** /com/vmware/vapi/metadata/authentication/package/id:{package_id} | Retrieves authentication information about the package element corresponding to {@param.name packageId}.
[**list**](MetadataAuthenticationPackageApi.md#list) | **GET** /com/vmware/vapi/metadata/authentication/package | Returns the identifiers for the package elements that have authentication information.


# **get**
> VapiMetadataAuthenticationPackageResult get(package_id)

Retrieves authentication information about the package element corresponding to {@param.name packageId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationPackageApi.new
package_id = 'package_id_example' # String | Identifier of the package element.

begin
  #Retrieves authentication information about the package element corresponding to {@param.name packageId}.
  result = api_instance.get(package_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationPackageApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**| Identifier of the package element. | 

### Return type

[**VapiMetadataAuthenticationPackageResult**](VapiMetadataAuthenticationPackageResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VapiMetadataAuthenticationPackageListResult list

Returns the identifiers for the package elements that have authentication information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::MetadataAuthenticationPackageApi.new

begin
  #Returns the identifiers for the package elements that have authentication information.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MetadataAuthenticationPackageApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiMetadataAuthenticationPackageListResult**](VapiMetadataAuthenticationPackageListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



