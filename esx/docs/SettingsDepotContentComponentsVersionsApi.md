# VSphereAutomation::ESX::SettingsDepotContentComponentsVersionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDepotContentComponentsVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/components/{name}/versions/{version} | Returns information about a given component version in the depot.


# **get**
> EsxSettingsDepotContentComponentsVersionsInfo get(name, version)

Returns information about a given component version in the depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotContentComponentsVersionsApi.new
name = 'name_example' # String | Name of the component
version = 'version_example' # String | Version of the component

begin
  #Returns information about a given component version in the depot.
  result = api_instance.get(name, version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotContentComponentsVersionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the component | 
 **version** | **String**| Version of the component | 

### Return type

[**EsxSettingsDepotContentComponentsVersionsInfo**](EsxSettingsDepotContentComponentsVersionsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



