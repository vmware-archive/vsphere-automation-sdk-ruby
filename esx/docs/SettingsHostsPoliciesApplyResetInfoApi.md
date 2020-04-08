# VSphereAutomation::ESX::SettingsHostsPoliciesApplyResetInfoApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsHostsPoliciesApplyResetInfoApi.md#get) | **GET** /api/esx/settings/hosts/{host}/policies/apply/reset-info | Returns the information describing the outcome when configured policies are reset. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> EsxSettingsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo get(host)

Returns the information describing the outcome when configured policies are reset. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsPoliciesApplyResetInfoApi.new
host = 'host_example' # String | Identifier of the host.

begin
  #Returns the information describing the outcome when configured policies are reset. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsPoliciesApplyResetInfoApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 

### Return type

[**EsxSettingsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo**](EsxSettingsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



