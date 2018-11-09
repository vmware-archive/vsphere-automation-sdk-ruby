# VSphereAutomation::Appliance::ApplianceRecoveryBackupSystemNameArchiveFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_timestamp** | **DateTime** | Backup must have been taken on or after this time to match the filter. | [optional] 
**end_timestamp** | **DateTime** | Backup must have been taken on or before this time to match the filter. | [optional] 
**comment_substring** | **String** | Backup comment must contain this {@term string} to match the filter. | [optional] 
**max_results** | **Integer** | Limit result to a max count of most recent backups. | [optional] 


