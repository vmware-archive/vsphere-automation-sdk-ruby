# VSphereAutomation::ESX::EsxSettingsHardwareSupportPackageCompliance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current** | [**EsxSettingsHardwareSupportPackageInfo**](EsxSettingsHardwareSupportPackageInfo.md) |  | [optional] 
**hardware_modules** | [**Hash&lt;String, EsxSettingsHardwareModuleFirmwareCompliance&gt;**](EsxSettingsHardwareModuleFirmwareCompliance.md) | Compliance result for individual hardware module on the host. The key is the module identifier and value is the HardwareModuleFirmwareCompliance for the device. NOTE: if no individual hardware module compliance is returned by the, Hardware Support Manager (HSM), this map may have no entries even if ComplianceStatus &#x3D; NON_COMPLIANT | 
**notifications** | [**EsxSettingsNotifications**](EsxSettingsNotifications.md) |  | 
**status** | [**EsxSettingsComplianceStatus**](EsxSettingsComplianceStatus.md) |  | 
**target** | [**EsxSettingsHardwareSupportPackageInfo**](EsxSettingsHardwareSupportPackageInfo.md) |  | [optional] 


