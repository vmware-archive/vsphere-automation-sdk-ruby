# VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyResetInfoApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDefaultsClustersPoliciesApplyResetInfoApi.md#get) | **GET** /api/esx/settings/defaults/clusters/policies/apply/reset-info | Returns the information describing the outcome when configured policies are reset.


# **get**
> EsxSettingsDefaultsClustersPoliciesApplyResetInfoConfiguredPolicyResetInfo get

Returns the information describing the outcome when configured policies are reset.

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

api_instance = VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyResetInfoApi.new

begin
  #Returns the information describing the outcome when configured policies are reset.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDefaultsClustersPoliciesApplyResetInfoApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxSettingsDefaultsClustersPoliciesApplyResetInfoConfiguredPolicyResetInfo**](EsxSettingsDefaultsClustersPoliciesApplyResetInfoConfiguredPolicyResetInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



