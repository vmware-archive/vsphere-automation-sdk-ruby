# VSphereAutomation::ESX::SettingsClustersSoftwareHardwareSupportApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareHardwareSupportApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/hardware-support | Returns a given cluster&#39;s Hardware Support Package (HSP) configuration.


# **get**
> EsxSettingsHardwareSupportInfo get(cluster)

Returns a given cluster's Hardware Support Package (HSP) configuration.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareHardwareSupportApi.new
cluster = 'cluster_example' # String | Identifier for the cluster.

begin
  #Returns a given cluster's Hardware Support Package (HSP) configuration.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareHardwareSupportApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier for the cluster. | 

### Return type

[**EsxSettingsHardwareSupportInfo**](EsxSettingsHardwareSupportInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



