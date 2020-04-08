# VSphereAutomation::VCenter::LcmTasksApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](LcmTasksApi.md#delete) | **DELETE** /rest/vcenter/lcm/tasks/{task} | Removes the task of the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **delete**
> delete(task)

Removes the task of the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::LcmTasksApi.new
task = 'task_example' # String | The parameter must be an identifier for the resource type: vcenter.lcm.task.

begin
  #Removes the task of the given identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(task)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmTasksApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **String**| The parameter must be an identifier for the resource type: vcenter.lcm.task. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



