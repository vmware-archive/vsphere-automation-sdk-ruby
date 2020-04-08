# VSphereAutomation::Appliance::ApplianceRecoveryBackupSchedulesCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_password** | **String** | Password for a backup piece. The backupPassword must adhere to the following password requirements: At least 8 characters, cannot be more than 20 characters in length. At least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible ASCII characters (for example, no space). | [optional] 
**enable** | **Boolean** | Enable or disable a schedule. | [optional] 
**location** | **String** | URL of the backup location. | 
**location_password** | **String** | Password for the given location. | [optional] 
**location_user** | **String** | Username for the given location. | [optional] 
**parts** | **Array&lt;String&gt;** | List of optional parts to be backed up. Use the {@link appliance.recovery.backup.Parts#list} {@term operation} to get information about the supported parts. | [optional] 
**recurrence_info** | [**ApplianceRecoveryBackupSchedulesRecurrenceInfo**](ApplianceRecoveryBackupSchedulesRecurrenceInfo.md) |  | [optional] 
**retention_info** | [**ApplianceRecoveryBackupSchedulesRetentionInfo**](ApplianceRecoveryBackupSchedulesRetentionInfo.md) |  | [optional] 


