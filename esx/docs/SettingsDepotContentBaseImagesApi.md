# VSphereAutomation::ESX::SettingsDepotContentBaseImagesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SettingsDepotContentBaseImagesApi.md#list) | **GET** /api/esx/settings/depot-content/base-images | Returns a list of currently available base-images in the depot.


# **list**
> Array&lt;EsxSettingsDepotContentBaseImagesSummary&gt; list(opts)

Returns a list of currently available base-images in the depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotContentBaseImagesApi.new
opts = {
  min_version: 'min_version_example' # String | Minimum version of a base-image that can match the filter.
}

begin
  #Returns a list of currently available base-images in the depot.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotContentBaseImagesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_version** | **String**| Minimum version of a base-image that can match the filter. | [optional] 

### Return type

[**Array&lt;EsxSettingsDepotContentBaseImagesSummary&gt;**](EsxSettingsDepotContentBaseImagesSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



