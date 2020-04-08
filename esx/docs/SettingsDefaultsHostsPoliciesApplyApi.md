# VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDefaultsHostsPoliciesApplyApi.md#get) | **GET** /api/esx/settings/defaults/hosts/policies/apply | Returns the configured policy that has been set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set**](SettingsDefaultsHostsPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/defaults/hosts/policies/apply | This API will set the configured policy. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec get

Returns the configured policy that has been set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyApi.new

begin
  #Returns the configured policy that has been set. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDefaultsHostsPoliciesApplyApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec**](EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(opts)

This API will set the configured policy. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsDefaultsHostsPoliciesApplyApi.new
opts = {
  request_body: ESX::EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec.new # EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec | 
}

begin
  #This API will set the configured policy. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDefaultsHostsPoliciesApplyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxSettingsDefaultsHostsPoliciesApplyConfiguredPolicySpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



