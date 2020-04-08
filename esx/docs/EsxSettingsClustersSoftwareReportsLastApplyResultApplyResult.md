# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsLastApplyResultApplyResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commit** | **String** | The identifier of the commit used to fetch the desired software document to be applied to all hosts within the cluster. | 
**failed_hosts** | **Array&lt;String&gt;** | Hosts in this cluster to which the desired software document specified by the {@link #commit} failed to be applied to. | 
**host_info** | [**Hash&lt;String, EsxSettingsHostInfo&gt;**](EsxSettingsHostInfo.md) | Information of the hosts in this cluster to which the desired software document specified by the {@link #commit} should be applied to. | 
**host_status** | [**Hash&lt;String, EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatus&gt;**](EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatus.md) | Status of the hosts in this cluster to which the desired software document specified by the {@link #commit} was applied to. Hosts on which the apply {@term operation} was sucessful are specified by {@link #successfulHosts}. Hosts on which the apply {@term operation} failed are specified by {@link #failedHosts}. Hosts which were skipped by the apply {@term operation} are specified by {@link #skippedHosts}. | 
**skipped_hosts** | **Array&lt;String&gt;** | Hosts in this cluster that were skipped by the apply {@term operation}. | 
**status** | [**EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatus**](EsxSettingsClustersSoftwareReportsLastApplyResultApplyStatus.md) |  | 
**successful_hosts** | **Array&lt;String&gt;** | Hosts in this cluster to which the desired software document specified by the {@link #commit} has been successfully applied to. | 


