# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsPciDeviceComplianceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compatibility_guide_link** | **String** | Provides link to the VMware Compatibility Guide for further information on the compatibility. | [optional] 
**compatible_versions** | **Array&lt;String&gt;** | List of vSphere Versions compatible for this device. This field is populated only for device found INCOMPATIBLE | 
**device** | [**EsxSettingsClustersSoftwareReportsPciDevice**](EsxSettingsClustersSoftwareReportsPciDevice.md) |  | 
**host_info** | [**Hash&lt;String, EsxSettingsHostInfo&gt;**](EsxSettingsHostInfo.md) | Affected List of Host IDs where this device is found. | 
**notifications** | [**EsxSettingsNotifications**](EsxSettingsNotifications.md) |  | [optional] 
**status** | [**EsxSettingsClustersSoftwareReportsComplianceStatus**](EsxSettingsClustersSoftwareReportsComplianceStatus.md) |  | 
**supported** | [**Array&lt;EsxSettingsClustersSoftwareReportsDriverFirmwareVersion&gt;**](EsxSettingsClustersSoftwareReportsDriverFirmwareVersion.md) | List of Supported Driver and Firmware Version combination from Harware Compatibility List. | 
**target** | [**EsxSettingsClustersSoftwareReportsDriverFirmwareVersion**](EsxSettingsClustersSoftwareReportsDriverFirmwareVersion.md) |  | 


