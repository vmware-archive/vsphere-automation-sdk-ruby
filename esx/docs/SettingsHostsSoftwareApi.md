# VSphereAutomation::ESX::SettingsHostsSoftwareApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scan_task**](SettingsHostsSoftwareApi.md#scan_task) | **POST** /api/esx/settings/hosts/{host}/software?action&#x3D;scan&amp;vmw-task&#x3D;true | Scans the host against the host&#39;s desired state.. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.


# **scan_task**
> String scan_task(host)

Scans the host against the host's desired state.. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsHostsSoftwareApi.new
host = 'host_example' # String | Identifier of the host.

begin
  #Scans the host against the host's desired state.. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.scan_task(host)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsHostsSoftwareApi->scan_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier of the host. | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



