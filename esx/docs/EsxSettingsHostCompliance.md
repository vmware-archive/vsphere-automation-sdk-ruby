# VSphereAutomation::ESX::EsxSettingsHostCompliance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add_on** | [**EsxSettingsAddOnCompliance**](EsxSettingsAddOnCompliance.md) |  | 
**base_image** | [**EsxSettingsBaseImageCompliance**](EsxSettingsBaseImageCompliance.md) |  | 
**commit** | **String** | Identifier of the commit on which the scan is run to generate this result. | [optional] 
**components** | [**Hash&lt;String, EsxSettingsComponentCompliance&gt;**](EsxSettingsComponentCompliance.md) | Compliance result for all the effective components and all the components present on the host. The key is the component name and value is the ComponentCompliance. | 
**hardware_support** | [**Hash&lt;String, EsxSettingsHardwareSupportPackageCompliance&gt;**](EsxSettingsHardwareSupportPackageCompliance.md) | Compliance result for hardware support (both Hardware Support Package or HSP and individual hardware module firmware) for every HSP configured, keyed by Hardware Support Manager (HSM). | [optional] 
**impact** | [**EsxSettingsComplianceImpact**](EsxSettingsComplianceImpact.md) |  | 
**notifications** | [**EsxSettingsNotifications**](EsxSettingsNotifications.md) |  | 
**scan_time** | **DateTime** | Scan completion time. | 
**solutions** | [**Hash&lt;String, EsxSettingsSolutionCompliance&gt;**](EsxSettingsSolutionCompliance.md) | Compliance result for solutions. The key is the solution name and value is the SolutionCompliance. | 
**status** | [**EsxSettingsComplianceStatus**](EsxSettingsComplianceStatus.md) |  | 


