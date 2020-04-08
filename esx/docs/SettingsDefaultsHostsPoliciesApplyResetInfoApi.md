# VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyResetInfoApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDefaultsHostsPoliciesApplyResetInfoApi.md#get) | **GET** /api/esx/settings/defaults/hosts/policies/apply/reset-info | Returns the information describing the outcome when configured policies are reset. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> EsxSettingsDefaultsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo get

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

api_instance = VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyResetInfoApi.new

begin
  #Returns the information describing the outcome when configured policies are reset. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDefaultsHostsPoliciesApplyResetInfoApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxSettingsDefaultsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo**](EsxSettingsDefaultsHostsPoliciesApplyResetInfoConfiguredPolicyResetInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



