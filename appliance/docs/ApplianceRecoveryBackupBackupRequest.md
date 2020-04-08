# VSphereAutomation::Appliance::ApplianceRecoveryBackupBackupRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_password** | **String** | a password for a backup piece The backupPassword must adhere to the following password requirements: At least 8 characters, cannot be more than 20 characters in length. At least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible ASCII characters (for example, no space). | [optional] 
**comment** | **String** | Custom comment | [optional] 
**location** | **String** | path or url | 
**location_password** | **String** | password for location | [optional] 
**location_type** | [**ApplianceRecoveryBackupLocationType**](ApplianceRecoveryBackupLocationType.md) |  | 
**location_user** | **String** | username for location | [optional] 
**parts** | **Array&lt;String&gt;** | a list of optional parts. Run backup parts APIs to get list of optional parts and description | 


