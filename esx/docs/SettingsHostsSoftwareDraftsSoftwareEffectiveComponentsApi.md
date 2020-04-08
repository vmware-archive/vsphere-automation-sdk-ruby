# VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi.md#list) | **GET** /api/esx/settings/hosts/{host}/software/drafts/{draft}/software/effective-components | Returns the components that comprise the desired software state of the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> Hash&lt;String, EsxSettingsEffectiveComponentInfo&gt; list(host, draft)

Returns the components that comprise the desired software state of the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi.new
host = 'host_example' # String | Identifier of the host.
draft = 'draft_example' # String | Identifier of the working copy document.

begin
  #Returns the components that comprise the desired software state of the host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(host, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareDraftsSoftwareEffectiveComponentsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 
 **draft** | **String**| Identifier of the working copy document. | 

### Return type

[**Hash&lt;String, EsxSettingsEffectiveComponentInfo&gt;**](EsxSettingsEffectiveComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



