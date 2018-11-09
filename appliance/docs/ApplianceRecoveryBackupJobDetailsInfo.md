# VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location** | **String** | URL of the backup location. | 
**duration** | **Integer** | Time in seconds since the backup job was started or the time it took to complete the backup job. | [optional] 
**size** | **Integer** | Size of the backup data transferred to remote location. | [optional] 
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**location_user** | **String** | The username for the remote backup location. | 
**type** | [**ApplianceRecoveryBackupJobDetailsType**](ApplianceRecoveryBackupJobDetailsType.md) |  | 
**messages** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of any info/warning/error messages returned by the backup job. | 
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


