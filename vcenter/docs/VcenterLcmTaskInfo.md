# VSphereAutomation::VCenter::VcenterLcmTaskInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_info** | **String** | Additional information that a response may contain. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Not all response will contain additional information. | [optional] 
**appliance_info** | [**VcenterLcmDeploymentInfo**](VcenterLcmDeploymentInfo.md) |  | [optional] 
**cancelable** | **Boolean** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**end_time** | **DateTime** | Time when the operation is completed. This field is optional and it is only relevant when the value of CommonInfo.status is one of SUCCEEDED or FAILED. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. If unset the description of why the operation failed will be included in the result of the operation (see Info.result). | [optional] 
**last_updated_time** | **DateTime** | The time that the last update is registered. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**metadata_file** | **String** | The path of the metadata file. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**operation** | **String** | Identifier of the operation associated with the task. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.operation. | 
**parent** | **String** | Parent of the current task. This field will be unset if the task has no parent. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: cis.task. When operations return a value of this structure as a result, the field will be an identifier for the resource type: cis.task. | [optional] 
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**result** | [**Object**](.md) | The result of validation or recommendation requests. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Not applicable for precheck/deployment operation. | [optional] 
**service** | **String** | Identifier of the service containing the operation. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.service. | 
**start_time** | **DateTime** | Time when the operation is started. This field is optional and it is only relevant when the value of CommonInfo.status is one of RUNNING, BLOCKED, SUCCEEDED, or FAILED. | [optional] 
**state** | **String** | The state of appliance being deployed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. May not have any state information. | [optional] 
**status** | [**CisTaskStatus**](CisTaskStatus.md) |  | 
**subtask_order** | **Array&lt;String&gt;** | The ordered list of subtasks for this deployment operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set when the appliance state is RUNNING_IN_PROGRESS, FAILED, CANCELLED and SUCCEEDED. | [optional] 
**subtasks** | [**Array&lt;VcenterLcmTaskInfoSubtasks&gt;**](VcenterLcmTaskInfoSubtasks.md) | The map of the deployment subtasks and their status information. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set when the appliance state is RUNNING_IN_PROGRESS, FAILED, CANCELLED and SUCCEEDED. | [optional] 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 
**user** | **String** | Name of the user who performed the operation. This field will be unset if the operation is performed by the system. | [optional] 


