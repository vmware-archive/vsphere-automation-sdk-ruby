# VSphereAutomation::ESX::SettingsDepotContentHardwareSupportManifestsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SettingsDepotContentHardwareSupportManifestsApi.md#list) | **GET** /api/esx/settings/depot-content/hardware-support/manifests | Returns a list of currently available Hardware Support Package (HSP) manifests in the depot.


# **list**
> Array&lt;EsxSettingsDepotContentHardwareSupportManifestsSummary&gt; list(opts)

Returns a list of currently available Hardware Support Package (HSP) manifests in the depot.

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

api_instance = VSphereAutomation::ESX::SettingsDepotContentHardwareSupportManifestsApi.new
opts = {
  vendors: ['vendors_example'], # Array<String> | Vendors that an HSP manifest must have to match the filter.
  managers: ['managers_example'], # Array<String> | HSM names that an HSP manifest must have to match the filter.
  packages: ['packages_example'], # Array<String> | Packages names that an HSP manifest must have to match the filter.
  package_versions: ['package_versions_example'], # Array<String> | Package versions that an HSP manifest must have to match the filter.
  min_package_version: 'min_package_version_example', # String | Minimum version of an HSP in the manifest that can match the filter.
  names: ['names_example'] # Array<String> | Manifest names that an HSP manifest must have to match the filter.
}

begin
  #Returns a list of currently available Hardware Support Package (HSP) manifests in the depot.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotContentHardwareSupportManifestsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendors** | [**Array&lt;String&gt;**](String.md)| Vendors that an HSP manifest must have to match the filter. | [optional] 
 **managers** | [**Array&lt;String&gt;**](String.md)| HSM names that an HSP manifest must have to match the filter. | [optional] 
 **packages** | [**Array&lt;String&gt;**](String.md)| Packages names that an HSP manifest must have to match the filter. | [optional] 
 **package_versions** | [**Array&lt;String&gt;**](String.md)| Package versions that an HSP manifest must have to match the filter. | [optional] 
 **min_package_version** | **String**| Minimum version of an HSP in the manifest that can match the filter. | [optional] 
 **names** | [**Array&lt;String&gt;**](String.md)| Manifest names that an HSP manifest must have to match the filter. | [optional] 

### Return type

[**Array&lt;EsxSettingsDepotContentHardwareSupportManifestsSummary&gt;**](EsxSettingsDepotContentHardwareSupportManifestsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



