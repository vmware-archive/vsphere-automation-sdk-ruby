# VSphereAutomation::CIS::CisTasksFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tasks** | **Array&lt;String&gt;** | Identifiers of tasks that can match the filter. This field may be unset if Tasks.FilterSpec.services is specified. Currently all tasks must be from the same provider. If unset or empty, tasks with any identifier will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: cis.task. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: cis.task. | [optional] 
**services** | **Array&lt;String&gt;** | Identifiers of services. Tasks created by operations in these services match the filter (see CommonInfo.service). This field may be unset if Tasks.FilterSpec.tasks is specified. Currently all services must be from the same provider. If this field is unset or empty, tasks for all services will match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.service. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.service. | [optional] 
**status** | [**Array&lt;CisTaskStatus&gt;**](CisTaskStatus.md) | Status that a task must have to match the filter (see CommonInfo.status). If unset or empty, tasks with any status match the filter. | [optional] 
**targets** | [**Array&lt;VapiStdDynamicID&gt;**](VapiStdDynamicID.md) | Identifiers of the targets the operation for the associated task created or was performed on (see CommonInfo.target). If unset or empty, tasks associated with operations on any target match the filter. | [optional] 
**users** | **Array&lt;String&gt;** | Users who must have initiated the operation for the associated task to match the filter (see CommonInfo.user). If unset or empty, tasks associated with operations initiated by any user match the filter. | [optional] 


