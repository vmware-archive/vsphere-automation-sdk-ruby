# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_statuses** | [**Array&lt;EsxSettingsClustersSoftwareReportsLastCheckResultCheckStatus&gt;**](EsxSettingsClustersSoftwareReportsLastCheckResultCheckStatus.md) | List of {@name CheckStatus} for all checks performed. | 
**cluster** | **String** | If the entity type is CLUSTER then the cluster identifier for which the checks have been run. | [optional] 
**host** | **String** | If the entity type is HOST then the host identifier for which the checks have been run. | [optional] 
**status** | [**EsxSettingsClustersSoftwareReportsLastCheckResultStatus**](EsxSettingsClustersSoftwareReportsLastCheckResultStatus.md) |  | 
**type** | [**EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResultEntityType**](EsxSettingsClustersSoftwareReportsLastCheckResultEntityCheckResultEntityType.md) |  | 


