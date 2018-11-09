# VSphereAutomation::Appliance::ApplianceRecoveryReconciliationJobInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**service** | **String** | Name of the service containing the operation. | 
**operation** | **String** | Name of the operation associated with the task. | 
**parent** | **String** | Parent of the current task. | [optional] 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 
**status** | [**ApplianceRecoveryReconciliationJobStatus**](ApplianceRecoveryReconciliationJobStatus.md) |  | 
**cancelable** | **BOOLEAN** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. | [optional] 
**start_time** | **DateTime** | Time when the operation is started. | [optional] 
**end_time** | **DateTime** | Time when the operation is completed. | [optional] 
**messages** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | A list of localized messages. | 
**progress** | **Integer** | The progress of the job as a percentage. | 


