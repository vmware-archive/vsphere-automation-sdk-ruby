# VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelable** | **Boolean** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | [optional] 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**end_time** | **DateTime** | Time when the operation is completed. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. | [optional] 
**messages** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | A list of localized messages. | 
**operation** | **String** | Name of the operation associated with the task. | 
**parent** | **String** | Parent of the current task. | [optional] 
**progress** | **Integer** | The progress of the job as a percentage. | 
**service** | **String** | Name of the service containing the operation. | 
**start_time** | **DateTime** | Time when the operation is started. | [optional] 
**status** | [**ApplianceRecoveryReconciliationJobStatus**](ApplianceRecoveryReconciliationJobStatus.md) |  | 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 


