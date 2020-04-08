# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultCheckResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commit** | **String** | The identifier of the commit on which checks have been run. | 
**end_time** | **DateTime** | Time when the operation completed. | 
**entity_results** | [**Array&lt;EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResult&gt;**](EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResult.md) | List of {@name EntityCheckResult} for all entities for which checks have been run. | 
**host_info** | [**Hash&lt;String, EsxSettingsHostInfo&gt;**](EsxSettingsHostInfo.md) | Information about the hosts in this cluster for which checks have been requested to be run. | 
**start_time** | **DateTime** | Time when the operation started. | 
**status** | [**EsxSettingsClustersSoftwareReportsLastCheckResultStatus**](EsxSettingsClustersSoftwareReportsLastCheckResultStatus.md) |  | 


