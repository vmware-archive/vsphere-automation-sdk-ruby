# VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyEffectiveApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDefaultsClustersPoliciesApplyEffectiveApi.md#get) | **GET** /api/esx/settings/defaults/clusters/policies/apply/effective | Returns the effective apply policy based on system defaults and what has been configured.


# **get**
> EsxSettingsDefaultsClustersPoliciesApplyEffectiveEffectivePolicySpec get

Returns the effective apply policy based on system defaults and what has been configured.

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

api_instance = VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyEffectiveApi.new

begin
  #Returns the effective apply policy based on system defaults and what has been configured.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDefaultsClustersPoliciesApplyEffectiveApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxSettingsDefaultsClustersPoliciesApplyEffectiveEffectivePolicySpec**](EsxSettingsDefaultsClustersPoliciesApplyEffectiveEffectivePolicySpec.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



