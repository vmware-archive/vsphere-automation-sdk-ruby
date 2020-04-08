# VSphereAutomation::ESX::SettingsDepotContentAddOnsVersionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDepotContentAddOnsVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/add-ons/{name}/versions/{version} | Returns information about a given OEM add-on version in the depot.


# **get**
> EsxSettingsDepotContentAddOnsVersionsInfo get(name, version)

Returns information about a given OEM add-on version in the depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotContentAddOnsVersionsApi.new
name = 'name_example' # String | Name of the OEM add-on
version = 'version_example' # String | Version of the OEM add-on

begin
  #Returns information about a given OEM add-on version in the depot.
  result = api_instance.get(name, version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotContentAddOnsVersionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the OEM add-on | 
 **version** | **String**| Version of the OEM add-on | 

### Return type

[**EsxSettingsDepotContentAddOnsVersionsInfo**](EsxSettingsDepotContentAddOnsVersionsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



