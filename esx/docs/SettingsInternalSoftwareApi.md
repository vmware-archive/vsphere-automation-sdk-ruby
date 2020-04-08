# VSphereAutomation::ESX::SettingsInternalSoftwareApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**set_task**](SettingsInternalSoftwareApi.md#set_task) | **PUT** /api/esx/settings/internal/software/{cluster}?vmw-task&#x3D;true | Sets the specified software document as the desired state document for the given cluster identifier. It is not verified whether an entity with the given cluster identifier exists or not.


# **set_task**
> String set_task(cluster, opts)

Sets the specified software document as the desired state document for the given cluster identifier. It is not verified whether an entity with the given cluster identifier exists or not.

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

api_instance = VSphereAutomation::ESX::SettingsInternalSoftwareApi.new
cluster = 'cluster_example' # String | Cluster identifier with which the given software document should be associated.
opts = {
  request_body: ESX::EsxSettingsSoftwareSpec.new # EsxSettingsSoftwareSpec | 
}

begin
  #Sets the specified software document as the desired state document for the given cluster identifier. It is not verified whether an entity with the given cluster identifier exists or not.
  result = api_instance.set_task(cluster, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsInternalSoftwareApi->set_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Cluster identifier with which the given software document should be associated. | 
 **request_body** | **EsxSettingsSoftwareSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



