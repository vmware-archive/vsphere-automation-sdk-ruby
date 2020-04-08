# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsPciDeviceCompliance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compatible_devices** | [**Array&lt;EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo&gt;**](EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo.md) | Compatible Device Compliance result for all devices present on all hosts in the cluster compared with the corresponding component in the software specification. The key is the DeviceName and value is the PciDeviceComplianceInfo object. | 
**incompatible_devices** | [**Array&lt;EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo&gt;**](EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo.md) | Incompatible Device Compliance result for all devices present on all hosts in the cluster compared with the corresponding component in the software specification. The key is the DeviceName and value is the PciDeviceComplianceInfo object. | 
**incompatible_driver_firmware** | [**Array&lt;EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo&gt;**](EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo.md) | Incompatible Driver Firmware combination Compliance result for all devices present on hosts in the cluster compared with the corresponding component in the software specification. The key is the DeviceName and value is the PciDeviceComplianceInfo object. | 
**status** | [**EsxSettingsClustersSoftwareReportsComplianceStatus**](EsxSettingsClustersSoftwareReportsComplianceStatus.md) |  | 


