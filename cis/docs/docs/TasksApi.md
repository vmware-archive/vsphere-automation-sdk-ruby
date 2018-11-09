# VSphereAutomation::CIS::TasksApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

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
> CisTasksResult get(task, opts)

Returns information about a task.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TasksApi.new
task = 'task_example' # String | Task identifier. The parameter must be an identifier for the resource type: cis.task.
opts = {
  spec: nil # Object | Specification on what to get for a task. If unset, the behavior is equivalent to a Tasks.GetSpec with all fields unset which means only the data described in Info will be returned and the result of the operation will be return.
}

begin
  #Returns information about a task.
  result = api_instance.get(task, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TasksApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **String**| Task identifier. The parameter must be an identifier for the resource type: cis.task. | 
 **spec** | [**Object**](.md)| Specification on what to get for a task. If unset, the behavior is equivalent to a Tasks.GetSpec with all fields unset which means only the data described in Info will be returned and the result of the operation will be return. | [optional] 

### Return type

[**CisTasksResult**](CisTasksResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> CisTasksListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) tasks matching the Tasks.FilterSpec. All tasks must be in the same provider.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'

api_instance = VSphereAutomation::CIS::TasksApi.new
opts = {
  filter_spec: nil, # Object | Specification of matching tasks. This is currently required. In the future, if it is unset, the behavior is equivalent to a Tasks.FilterSpec with all fields unset which means all tasks match the filter.
  result_spec: nil # Object | Specification of what to return for a task. If unset, the behavior is equivalent to a Tasks.GetSpec with all fields unset which means only the data describe in Info will be returned and the result of the operation will be return.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) tasks matching the Tasks.FilterSpec. All tasks must be in the same provider.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TasksApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_spec** | [**Object**](.md)| Specification of matching tasks. This is currently required. In the future, if it is unset, the behavior is equivalent to a Tasks.FilterSpec with all fields unset which means all tasks match the filter. | [optional] 
 **result_spec** | [**Object**](.md)| Specification of what to return for a task. If unset, the behavior is equivalent to a Tasks.GetSpec with all fields unset which means only the data describe in Info will be returned and the result of the operation will be return. | [optional] 

### Return type

[**CisTasksListResult**](CisTasksListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



