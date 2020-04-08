# VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityDetailsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareReportsHardwareCompatibilityDetailsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/reports/hardware-compatibility/details | Returns the hcl validation check detailed results.


# **get**
> EsxSettingsClustersSoftwareReportsCheckResult get(cluster)

Returns the hcl validation check detailed results.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareReportsHardwareCompatibilityDetailsApi.new
cluster = 'cluster_example' # String | identifier of the cluster.

begin
  #Returns the hcl validation check detailed results.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareReportsHardwareCompatibilityDetailsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| identifier of the cluster. | 

### Return type

[**EsxSettingsClustersSoftwareReportsCheckResult**](EsxSettingsClustersSoftwareReportsCheckResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



