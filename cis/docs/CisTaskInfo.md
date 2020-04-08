# VSphereAutomation::CIS::CisTaskInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelable** | **Boolean** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**end_time** | **DateTime** | Time when the operation is completed. This field is optional and it is only relevant when the value of CommonInfo.status is one of SUCCEEDED or FAILED. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. If unset the description of why the operation failed will be included in the result of the operation (see Info.result). | [optional] 
**operation** | **String** | Identifier of the operation associated with the task. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.operation. | 
**parent** | **String** | Parent of the current task. This field will be unset if the task has no parent. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: cis.task. When operations return a value of this structure as a result, the field will be an identifier for the resource type: cis.task. | [optional] 
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**result** | [**Object**](.md) | Result of the operation. If an operation reports partial results before it completes, this field could be set before the CommonInfo.status has the value SUCCEEDED. The value could change as the operation progresses. This field will be unset if the operation does not return a result or if the result is not available at the current step of the operation. | [optional] 
**service** | **String** | Identifier of the service containing the operation. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.service. | 
**start_time** | **DateTime** | Time when the operation is started. This field is optional and it is only relevant when the value of CommonInfo.status is one of RUNNING, BLOCKED, SUCCEEDED, or FAILED. | [optional] 
**status** | [**CisTaskStatus**](CisTaskStatus.md) |  | 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 
**user** | **String** | Name of the user who performed the operation. This field will be unset if the operation is performed by the system. | [optional] 


