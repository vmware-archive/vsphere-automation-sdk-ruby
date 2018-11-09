# VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parts** | **Array&lt;String&gt;** | List of optional parts that will be included in backups based on this schedule details. Use the {@link appliance.recovery.backup.Parts#list} {@term operation} to get information about the supported parts. | 
**location** | **String** | URL of the backup location. | 
**location_user** | **String** | Username for the given location. | [optional] 
**enable** | **BOOLEAN** | Enable or disable a schedule, by default when created a schedule will be enabled. | 
**recurrence_info** | [**ApplianceRecoveryBackupSchedulesRecurrenceInfo**](ApplianceRecoveryBackupSchedulesRecurrenceInfo.md) |  | [optional] 
**retention_info** | [**ApplianceRecoveryBackupSchedulesRetentionInfo**](ApplianceRecoveryBackupSchedulesRetentionInfo.md) |  | [optional] 


