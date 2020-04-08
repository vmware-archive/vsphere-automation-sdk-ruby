# VSphereAutomation::ESX::EsxHclHostsCompatibilityReportServerCompatibility

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bios_constraints** | [**Array&lt;EsxHclHostsCompatibilityReportBiosConstraint&gt;**](EsxHclHostsCompatibilityReportBiosConstraint.md) | Lists the BIOS constraints that the target ESXi release has for this server. | [optional] 
**cpu_series** | **String** | The CPU series name. | 
**notes** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Information that needs to be taken into account when considering this server hardware compatibility. | [optional] 
**supported_releases** | **Array&lt;String&gt;** | Provides information about supported releases for this entry. | [optional] 
**vcg_link** | **String** | Provides link to the VMware Compatibility Guide for further information on the compatibility. | 


