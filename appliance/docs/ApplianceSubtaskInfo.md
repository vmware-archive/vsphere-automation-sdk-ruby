# VSphereAutomation::Appliance::ApplianceSubtaskInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelable** | **Boolean** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**end_time** | **DateTime** | Time when the operation is completed. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. | [optional] 
**operation** | **String** | Identifier of the operation associated with the task. | 
**parent** | **String** | Parent of the current task. | [optional] 
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**result** | [**ApplianceNotifications**](ApplianceNotifications.md) |  | [optional] 
**service** | **String** | Identifier of the service containing the operation. | 
**start_time** | **DateTime** | Time when the operation is started. | [optional] 
**status** | [**CisTaskStatus**](CisTaskStatus.md) |  | 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 
**user** | **String** | Name of the user who performed the operation. | [optional] 


