# VSphereAutomation::ESX::SettingsClustersPoliciesApplyApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersPoliciesApplyApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/policies/apply | Returns the configured policy that has been set for the cluster.
[**set**](SettingsClustersPoliciesApplyApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/policies/apply | This API will set the configured policy specification for the cluster.


# **get**
> EsxSettingsClustersPoliciesApplyConfiguredPolicySpec get(cluster)

Returns the configured policy that has been set for the cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersPoliciesApplyApi.new
cluster = 'cluster_example' # String | The cluster identifier.

begin
  #Returns the configured policy that has been set for the cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersPoliciesApplyApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The cluster identifier. | 

### Return type

[**EsxSettingsClustersPoliciesApplyConfiguredPolicySpec**](EsxSettingsClustersPoliciesApplyConfiguredPolicySpec.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(cluster, opts)

This API will set the configured policy specification for the cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersPoliciesApplyApi.new
cluster = 'cluster_example' # String | The cluster identifier.
opts = {
  request_body: ESX::EsxSettingsClustersPoliciesApplyConfiguredPolicySpec.new # EsxSettingsClustersPoliciesApplyConfiguredPolicySpec | 
}

begin
  #This API will set the configured policy specification for the cluster.
  api_instance.set(cluster, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersPoliciesApplyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The cluster identifier. | 
 **request_body** | **EsxSettingsClustersPoliciesApplyConfiguredPolicySpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



