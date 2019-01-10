# VSphereAutomation::VCenter::VcenterDeploymentInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | [**VcenterDeploymentApplianceState**](VcenterDeploymentApplianceState.md) |  | 
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**subtask_order** | **Array&lt;String&gt;** | The ordered list of subtasks for this deployment operation. | [optional] 
**subtasks** | **Array&lt;Object&gt;** | The map of the deployment subtasks and their status infomation. | [optional] 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**service** | **String** | Identifier of the service containing the operation. | 
**operation** | **String** | Identifier of the operation associated with the task. | 
**parent** | **String** | Parent of the current task. | [optional] 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 
**status** | [**CisTaskStatus**](CisTaskStatus.md) |  | 
**cancelable** | **BOOLEAN** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. | [optional] 
**start_time** | **DateTime** | Time when the operation is started. | [optional] 
**end_time** | **DateTime** | Time when the operation is completed. | [optional] 
**user** | **String** | Name of the user who performed the operation. | [optional] 


