# VSphereAutomation::ESX::SettingsDepotContentBaseImagesVersionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDepotContentBaseImagesVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/base-images/versions/{version} | Returns information about a given base-image version in the depot.


# **get**
> EsxSettingsDepotContentBaseImagesVersionsInfo get(version)

Returns information about a given base-image version in the depot.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsDepotContentBaseImagesVersionsApi.new
version = 'version_example' # String | Version of the base-image

begin
  #Returns information about a given base-image version in the depot.
  result = api_instance.get(version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotContentBaseImagesVersionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Version of the base-image | 

### Return type

[**EsxSettingsDepotContentBaseImagesVersionsInfo**](EsxSettingsDepotContentBaseImagesVersionsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



