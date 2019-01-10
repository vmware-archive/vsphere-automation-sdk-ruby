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
  spec_return_all: true, # BOOLEAN | If true, all data, including operation-specific data, will be returned, otherwise only the data described in Info will be returned. If unset, only the data described in Info will be returned.
  spec_exclude_result: true # BOOLEAN | If true, the result will not be included in the task information, otherwise it will be included. If unset, the result of the operation will be included in the task information.
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
 **spec_return_all** | **BOOLEAN**| If true, all data, including operation-specific data, will be returned, otherwise only the data described in Info will be returned. If unset, only the data described in Info will be returned. | [optional] 
 **spec_exclude_result** | **BOOLEAN**| If true, the result will not be included in the task information, otherwise it will be included. If unset, the result of the operation will be included in the task information. | [optional] 

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
  filter_spec_tasks: ['filter_spec_tasks_example'], # Array<String> | Identifiers of tasks that can match the filter. This field may be unset if Tasks.FilterSpec.services is specified. Currently all tasks must be from the same provider. If unset or empty, tasks with any identifier will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.task. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.task.
  result_spec_return_all: true, # BOOLEAN | If true, all data, including operation-specific data, will be returned, otherwise only the data described in Info will be returned. If unset, only the data described in Info will be returned.
  result_spec_exclude_result: true, # BOOLEAN | If true, the result will not be included in the task information, otherwise it will be included. If unset, the result of the operation will be included in the task information.
  filter_spec_services: ['filter_spec_services_example'], # Array<String> | Identifiers of services. Tasks created by operations in these services match the filter (see CommonInfo.service). This field may be unset if Tasks.FilterSpec.tasks is specified. Currently all services must be from the same provider. If this field is unset or empty, tasks for all services will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.service. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.service.
  filter_spec_status: ['filter_spec_status_example'], # Array<String> | Status that a task must have to match the filter (see CommonInfo.status). If unset or empty, tasks with any status match the filter.
  filter_spec_targets: nil, # Array<Object> | Identifiers of the targets the operation for the associated task created or was performed on (see CommonInfo.target). If unset or empty, tasks associated with operations on any target match the filter.
  filter_spec_users: ['filter_spec_users_example'] # Array<String> | Users who must have initiated the operation for the associated task to match the filter (see CommonInfo.user). If unset or empty, tasks associated with operations initiated by any user match the filter.
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
 **filter_spec_tasks** | [**Array&lt;String&gt;**](String.md)| Identifiers of tasks that can match the filter. This field may be unset if Tasks.FilterSpec.services is specified. Currently all tasks must be from the same provider. If unset or empty, tasks with any identifier will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.task. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.task. | [optional] 
 **result_spec_return_all** | **BOOLEAN**| If true, all data, including operation-specific data, will be returned, otherwise only the data described in Info will be returned. If unset, only the data described in Info will be returned. | [optional] 
 **result_spec_exclude_result** | **BOOLEAN**| If true, the result will not be included in the task information, otherwise it will be included. If unset, the result of the operation will be included in the task information. | [optional] 
 **filter_spec_services** | [**Array&lt;String&gt;**](String.md)| Identifiers of services. Tasks created by operations in these services match the filter (see CommonInfo.service). This field may be unset if Tasks.FilterSpec.tasks is specified. Currently all services must be from the same provider. If this field is unset or empty, tasks for all services will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.service. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.service. | [optional] 
 **filter_spec_status** | [**Array&lt;String&gt;**](String.md)| Status that a task must have to match the filter (see CommonInfo.status). If unset or empty, tasks with any status match the filter. | [optional] 
 **filter_spec_targets** | [**Array&lt;Object&gt;**](Object.md)| Identifiers of the targets the operation for the associated task created or was performed on (see CommonInfo.target). If unset or empty, tasks associated with operations on any target match the filter. | [optional] 
 **filter_spec_users** | [**Array&lt;String&gt;**](String.md)| Users who must have initiated the operation for the associated task to match the filter (see CommonInfo.user). If unset or empty, tasks associated with operations initiated by any user match the filter. | [optional] 

### Return type

[**CisTasksListResult**](CisTasksListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



