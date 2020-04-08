# VSphereAutomation::ESX::SettingsClustersSoftwareHaInternalApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apply_task**](SettingsClustersSoftwareHaInternalApi.md#apply_task) | **POST** /api/esx/settings/clusters/{cluster}/software/ha-internal?action&#x3D;apply&amp;vmw-task&#x3D;true | Applies the HA Component specified in the desired specification document to the hosts in the cluster.


# **apply_task**
> String apply_task(cluster)

Applies the HA Component specified in the desired specification document to the hosts in the cluster.

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

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareHaInternalApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.

begin
  #Applies the HA Component specified in the desired specification document to the hosts in the cluster.
  result = api_instance.apply_task(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareHaInternalApi->apply_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



