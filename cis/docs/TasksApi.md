# VSphereAutomation::CIS::TasksApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](TasksApi.md#cancel) | **POST** /cis/tasks/{task}?action&#x3D;cancel | Cancel a running operation associated with the task. This is the best effort attempt. Operation may not be cancelled anymore once it reaches certain stage.
[**get**](TasksApi.md#get) | **GET** /cis/tasks/{task} | Returns information about a task.
[**list**](TasksApi.md#list) | **GET** /cis/tasks | Returns information about at most 1000 visible (subject to permission checks) tasks matching the Tasks.FilterSpec. All tasks must be in the same provider.


# **cancel**
> cancel(task)

Cancel a running operation associated with the task. This is the best effort attempt. Operation may not be cancelled anymore once it reaches certain stage.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TasksApi.new
task = 'task_example' # String | Task identifier. The parameter must be an identifier for the resource type: cis.task.

begin
  #Cancel a running operation associated with the task. This is the best effort attempt. Operation may not be cancelled anymore once it reaches certain stage.
  api_instance.cancel(task)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TasksApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **String**| Task identifier. The parameter must be an identifier for the resource type: cis.task. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> CisTasksResult get(task)

Returns information about a task.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TasksApi.new
task = 'task_example' # String | Task identifier. The parameter must be an identifier for the resource type: cis.task.

begin
  #Returns information about a task.
  result = api_instance.get(task)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TasksApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **String**| Task identifier. The parameter must be an identifier for the resource type: cis.task. | 

### Return type

[**CisTasksResult**](CisTasksResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> CisTasksListResult list

Returns information about at most 1000 visible (subject to permission checks) tasks matching the Tasks.FilterSpec. All tasks must be in the same provider.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TasksApi.new

begin
  #Returns information about at most 1000 visible (subject to permission checks) tasks matching the Tasks.FilterSpec. All tasks must be in the same provider.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TasksApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CisTasksListResult**](CisTasksListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



