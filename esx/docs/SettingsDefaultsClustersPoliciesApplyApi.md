# VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsDefaultsClustersPoliciesApplyApi.md#get) | **GET** /api/esx/settings/defaults/clusters/policies/apply | Returns the configured policy that has been set.
[**set**](SettingsDefaultsClustersPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/defaults/clusters/policies/apply | This API will set the configured policy specification.


# **get**
> EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec get

Returns the configured policy that has been set.

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

api_instance = VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyApi.new

begin
  #Returns the configured policy that has been set.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDefaultsClustersPoliciesApplyApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec**](EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(opts)

This API will set the configured policy specification.

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

api_instance = VSphereAutomation::ESX::SettingsDefaultsClustersPoliciesApplyApi.new
opts = {
  request_body: ESX::EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec.new # EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec | 
}

begin
  #This API will set the configured policy specification.
  api_instance.set(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDefaultsClustersPoliciesApplyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **EsxSettingsDefaultsClustersPoliciesApplyConfiguredPolicySpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



