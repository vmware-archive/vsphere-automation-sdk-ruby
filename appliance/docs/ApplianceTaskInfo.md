# VSphereAutomation::Appliance::ApplianceTaskInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**subtask_order** | **Array&lt;String&gt;** | List of tasks that make up this appliance task in the order they are being run. | 
**subtasks** | **Array&lt;Object&gt;** | Information about the subtasks that this appliance task consists of. | 
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


