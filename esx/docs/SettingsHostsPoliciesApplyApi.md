# VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsHostsPoliciesApplyApi.md#get) | **GET** /api/esx/settings/hosts/{host}/policies/apply | Returns the configured policy that has been set for the ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set**](SettingsHostsPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/hosts/{host}/policies/apply | This API will set the configured policy for an ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> EsxSettingsHostsPoliciesApplyConfiguredPolicySpec get(host)

Returns the configured policy that has been set for the ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi.new
host = 'host_example' # String | The host identifier.

begin
  #Returns the configured policy that has been set for the ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsPoliciesApplyApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| The host identifier. | 

### Return type

[**EsxSettingsHostsPoliciesApplyConfiguredPolicySpec**](EsxSettingsHostsPoliciesApplyConfiguredPolicySpec.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(host, opts)

This API will set the configured policy for an ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::ESX::SettingsHostsPoliciesApplyApi.new
host = 'host_example' # String | The host identifier.
opts = {
  request_body: ESX::EsxSettingsHostsPoliciesApplyConfiguredPolicySpec.new # EsxSettingsHostsPoliciesApplyConfiguredPolicySpec | 
}

begin
  #This API will set the configured policy for an ESXi host. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set(host, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsPoliciesApplyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| The host identifier. | 
 **request_body** | **EsxSettingsHostsPoliciesApplyConfiguredPolicySpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



