# VSphereAutomation::ESX::EsxSettingsClusterCompliance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commit** | **String** | Identifier of the commit on which the scan is run to generate this result. | [optional] 
**compliant_hosts** | **Array&lt;String&gt;** | Identifiers of compliant hosts. | 
**host_info** | [**Hash&lt;String, EsxSettingsHostInfo&gt;**](EsxSettingsHostInfo.md) | Auxillary information about the hosts. This gives some additional information about the hosts referenced in this result. | 
**hosts** | [**Hash&lt;String, EsxSettingsHostCompliance&gt;**](EsxSettingsHostCompliance.md) | Mapping from host identifier to the compliance information for the host. | 
**impact** | [**EsxSettingsComplianceImpact**](EsxSettingsComplianceImpact.md) |  | 
**incompatible_hosts** | **Array&lt;String&gt;** | Identifiers of incompatible hosts. | 
**non_compliant_hosts** | **Array&lt;String&gt;** | Identifiers of non-compliant hosts. | 
**notifications** | [**EsxSettingsNotifications**](EsxSettingsNotifications.md) |  | 
**scan_time** | **DateTime** | Scan completion time. | 
**status** | [**EsxSettingsComplianceStatus**](EsxSettingsComplianceStatus.md) |  | 
**unavailable_hosts** | **Array&lt;String&gt;** | Identifiers of unavailable hosts. There will not be compliance details for these hosts in {@link #hosts}. | 


