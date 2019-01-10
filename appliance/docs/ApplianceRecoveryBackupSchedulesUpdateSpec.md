# VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parts** | **Array&lt;String&gt;** | List of optional parts. Use the {@link appliance.recovery.backup.Parts#list} {@term operation} to get information about the supported parts. | [optional] 
**backup_password** | **String** | Password for a backup piece. The backupPassword must adhere to the following password requirements: At least 8 characters, cannot be more than 20 characters in length. At least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible ASCII characters (for example, no space). | [optional] 
**location** | **String** | URL of the backup location. | [optional] 
**location_user** | **String** | Username for the given location. | [optional] 
**location_password** | **String** | Password for the given location. | [optional] 
**enable** | **BOOLEAN** | Enable or disable a schedule. | [optional] 
**recurrence_info** | [**ApplianceRecoveryBackupSchedulesRecurrenceInfo**](ApplianceRecoveryBackupSchedulesRecurrenceInfo.md) |  | [optional] 
**retention_info** | [**ApplianceRecoveryBackupSchedulesRetentionInfo**](ApplianceRecoveryBackupSchedulesRetentionInfo.md) |  | [optional] 


