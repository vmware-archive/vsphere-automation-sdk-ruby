# VSphereAutomation::VCenter::VcenterLcmSubTaskInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelable** | **Boolean** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**end_time** | **DateTime** | Time when the operation is completed. This field is optional and it is only relevant when the value of CommonInfo.status is one of SUCCEEDED or FAILED. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. If unset the description of why the operation failed will be included in the result of the operation (see Info.result). | [optional] 
**external_tools** | [**Array&lt;VcenterLcmExternalTool&gt;**](VcenterLcmExternalTool.md) | External tools used for the deployment. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**last_updated_time** | **DateTime** | The time that the last update is registered. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**operation** | **String** | Identifier of the operation associated with the task. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.operation. | 
**parent** | **String** | Parent of the current task. This field will be unset if the task has no parent. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: cis.task. When operations return a value of this structure as a result, the field will be an identifier for the resource type: cis.task. | [optional] 
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | 
**result** | [**VcenterLcmResult**](VcenterLcmResult.md) |  | [optional] 
**service** | **String** | Identifier of the service containing the operation. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vapi.service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vapi.service. | 
**start_time** | **DateTime** | Time when the operation is started. This field is optional and it is only relevant when the value of CommonInfo.status is one of RUNNING, BLOCKED, SUCCEEDED, or FAILED. | [optional] 
**status** | [**CisTaskStatus**](CisTaskStatus.md) |  | 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 
**user** | **String** | Name of the user who performed the operation. This field will be unset if the operation is performed by the system. | [optional] 


