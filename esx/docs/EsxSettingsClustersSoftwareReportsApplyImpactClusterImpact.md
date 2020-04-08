# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsApplyImpactClusterImpact

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commit** | **String** | Identifier of the commit on which the impact is generated. | 
**host_impact** | **Hash&lt;String, Array&lt;EsxSettingsClustersSoftwareReportsApplyImpactImpact&gt;&gt;** | Impact summary for each host within the clsuter. | 
**host_info** | [**Hash&lt;String, EsxSettingsHostInfo&gt;**](EsxSettingsHostInfo.md) | Information of hosts within the cluster. | 
**impact** | [**Array&lt;EsxSettingsClustersSoftwareReportsApplyImpactImpact&gt;**](EsxSettingsClustersSoftwareReportsApplyImpactImpact.md) | Impact of steps performed during the setup and cleanup phase of the apply {@term operation}. | 


