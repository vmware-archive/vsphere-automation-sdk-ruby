# VSphereAutomation::Appliance::ApplianceRecoveryBackupJobDetailsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build** | [**ApplianceRecoveryBackupJobDetailsBuildInfo**](ApplianceRecoveryBackupJobDetailsBuildInfo.md) |  | [optional] 
**cancelable** | **Boolean** | Flag to indicate whether or not the operation can be cancelled. The value may change as the operation progresses. | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**duration** | **Integer** | Time in seconds since the backup job was started or the time it took to complete the backup job. | [optional] 
**end_time** | **DateTime** | Time when the operation is completed. | [optional] 
**error** | **String** | Description of the error if the operation status is \&quot;FAILED\&quot;. | [optional] 
**location** | **String** | URL of the backup location. | 
**location_user** | **String** | The username for the remote backup location. | 
**messages** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of any info/warning/error messages returned by the backup job. | 
**operation** | **String** | Identifier of the operation associated with the task. | 
**parent** | **String** | Parent of the current task. | [optional] 
**progress** | [**CisTaskProgress**](CisTaskProgress.md) |  | [optional] 
**service** | **String** | Identifier of the service containing the operation. | 
**size** | **Integer** | Size of the backup data transferred to remote location. | [optional] 
**start_time** | **DateTime** | Time when the operation is started. | [optional] 
**status** | [**CisTaskStatus**](CisTaskStatus.md) |  | 
**target** | [**VapiStdDynamicID**](VapiStdDynamicID.md) |  | [optional] 
**type** | [**ApplianceRecoveryBackupJobDetailsType**](ApplianceRecoveryBackupJobDetailsType.md) |  | 
**user** | **String** | Name of the user who performed the operation. | [optional] 


