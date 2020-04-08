# VSphereAutomation::ESX::SettingsClustersSoftwareComplianceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareComplianceApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/compliance | Returns the compliance state for the cluster


# **get**
> EsxSettingsClusterCompliance get(cluster)

Returns the compliance state for the cluster

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareComplianceApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Returns the compliance state for the cluster
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareComplianceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

[**EsxSettingsClusterCompliance**](EsxSettingsClusterCompliance.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



