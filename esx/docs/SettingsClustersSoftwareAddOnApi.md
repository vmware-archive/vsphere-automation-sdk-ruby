# VSphereAutomation::ESX::SettingsClustersSoftwareAddOnApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SettingsClustersSoftwareAddOnApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/add-on | Returns the desired OEM add-on specification for a given cluster.


# **get**
> EsxSettingsAddOnInfo get(cluster)

Returns the desired OEM add-on specification for a given cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareAddOnApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Returns the desired OEM add-on specification for a given cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareAddOnApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

[**EsxSettingsAddOnInfo**](EsxSettingsAddOnInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



