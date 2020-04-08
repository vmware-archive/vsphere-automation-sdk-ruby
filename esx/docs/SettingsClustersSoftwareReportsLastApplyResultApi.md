# VSphereAutomation::ESX::SettingsClustersSoftwareReportsLastApplyResultApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareReportsLastApplyResultApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/last-apply-result | Returns the most recent available result of applying the desired software document to all hosts within the cluster.


# **get**
> EsxSettingsClustersSoftwareReportsLastApplyResultApplyResult get(cluster)

Returns the most recent available result of applying the desired software document to all hosts within the cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareReportsLastApplyResultApi.new
cluster = 'cluster_example' # String | The cluster identifier.

begin
  #Returns the most recent available result of applying the desired software document to all hosts within the cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareReportsLastApplyResultApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| The cluster identifier. | 

### Return type

[**EsxSettingsClustersSoftwareReportsLastApplyResultApplyResult**](EsxSettingsClustersSoftwareReportsLastApplyResultApplyResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



