# VSphereAutomation::ESX::SettingsDepotContentHardwareSupportManifestsVersionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDepotContentHardwareSupportManifestsVersionsApi.md#get) | **GET** /api/esx/settings/depot-content/hardware-support/manifests/{manifest}/versions/{version} | Returns a complete description of a Hardware Support Package (HSP) manifest in the depot (including component lists)


# **get**
> EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo get(manifest, version)

Returns a complete description of a Hardware Support Package (HSP) manifest in the depot (including component lists)

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

api_instance = VSphereAutomation::ESX::SettingsDepotContentHardwareSupportManifestsVersionsApi.new
manifest = 'manifest_example' # String | name of the target HSP manifest
version = 'version_example' # String | version of the target HSP manifest

begin
  #Returns a complete description of a Hardware Support Package (HSP) manifest in the depot (including component lists)
  result = api_instance.get(manifest, version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotContentHardwareSupportManifestsVersionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest** | **String**| name of the target HSP manifest | 
 **version** | **String**| version of the target HSP manifest | 

### Return type

[**EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo**](EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



