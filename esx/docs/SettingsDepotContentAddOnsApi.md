# VSphereAutomation::ESX::SettingsDepotContentAddOnsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SettingsDepotContentAddOnsApi.md#list) | **GET** /api/esx/settings/depot-content/add-ons | Returns a list of currently available OEM add-ons in the depot.


# **list**
> Array&lt;EsxSettingsDepotContentAddOnsSummary&gt; list(opts)

Returns a list of currently available OEM add-ons in the depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotContentAddOnsApi.new
opts = {
  vendors: ['vendors_example'], # Array<String> | Vendors that an add-on must have to match the filter.
  names: ['names_example'], # Array<String> | Names that an add-on must have to match the filter.
  versions: ['versions_example'], # Array<String> | Versions that an add-on must have to match the filter.
  min_version: 'min_version_example' # String | Minimum version of an add-on that can match the filter.
}

begin
  #Returns a list of currently available OEM add-ons in the depot.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotContentAddOnsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendors** | [**Array&lt;String&gt;**](String.md)| Vendors that an add-on must have to match the filter. | [optional] 
 **names** | [**Array&lt;String&gt;**](String.md)| Names that an add-on must have to match the filter. | [optional] 
 **versions** | [**Array&lt;String&gt;**](String.md)| Versions that an add-on must have to match the filter. | [optional] 
 **min_version** | **String**| Minimum version of an add-on that can match the filter. | [optional] 

### Return type

[**Array&lt;EsxSettingsDepotContentAddOnsSummary&gt;**](EsxSettingsDepotContentAddOnsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



