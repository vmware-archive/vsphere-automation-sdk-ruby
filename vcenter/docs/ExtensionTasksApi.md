# VSphereAutomation::VCenter::ExtensionTasksApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExtensionTasksApi.md#create) | **POST** /rest/vcenter/extension/tasks | Returns a taskId for the task using the CreateSpec. The taskId can be used for querying or updating the status of the task by the client. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](ExtensionTasksApi.md#update) | **PATCH** /rest/vcenter/extension/tasks/{task_id} | Updates the information of the operation associated with a task on the ManagedObjects. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> VcenterExtensionTasksCreateResp create(request_body)

Returns a taskId for the task using the CreateSpec. The taskId can be used for querying or updating the status of the task by the client. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ExtensionTasksApi.new
request_body = VCenter::VcenterExtensionTasksCreate.new # VcenterExtensionTasksCreate | 

begin
  #Returns a taskId for the task using the CreateSpec. The taskId can be used for querying or updating the status of the task by the client. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ExtensionTasksApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterExtensionTasksCreate**](VcenterExtensionTasksCreate.md)|  | 

### Return type

[**VcenterExtensionTasksCreateResp**](VcenterExtensionTasksCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(task_id, request_body)

Updates the information of the operation associated with a task on the ManagedObjects. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ExtensionTasksApi.new
task_id = 'task_id_example' # String | Task-Id of the task whose information is to be updated. The parameter must be an identifier for the resource type: cis.task.
request_body = VCenter::VcenterExtensionTasksUpdate.new # VcenterExtensionTasksUpdate | 

begin
  #Updates the information of the operation associated with a task on the ManagedObjects. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(task_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ExtensionTasksApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Task-Id of the task whose information is to be updated. The parameter must be an identifier for the resource type: cis.task. | 
 **request_body** | [**VcenterExtensionTasksUpdate**](VcenterExtensionTasksUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



