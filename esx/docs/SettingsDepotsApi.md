# VSphereAutomation::ESX::SettingsDepotsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sync_task**](SettingsDepotsApi.md#sync_task) | **POST** /api/esx/settings/depots?action&#x3D;sync&amp;vmw-task&#x3D;true | Syncs the metadata from the currently configured online or umds depots. If any umds depot is set, then metadata is downloaded from that depot else metadata is downloaded from the online depots. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.


# **sync_task**
> String sync_task

Syncs the metadata from the currently configured online or umds depots. If any umds depot is set, then metadata is downloaded from that depot else metadata is downloaded from the online depots. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.

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

api_instance = VSphereAutomation::ESX::SettingsDepotsApi.new

begin
  #Syncs the metadata from the currently configured online or umds depots. If any umds depot is set, then metadata is downloaded from that depot else metadata is downloaded from the online depots. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
  result = api_instance.sync_task
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsDepotsApi->sync_task: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



