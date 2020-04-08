# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsCheckResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image_version** | **String** | Target base image version E.g., version &#x3D; BaseImageSpec-&gt;Version {@link esx.settings.BaseImageSpec#version} {@term structure} | 
**commit** | **String** | Spec Identifier of the desired configuration on which the HCL scan is performed to generate this result, populated by the HCL validation. | [optional] 
**note** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**notifications** | [**EsxSettingsNotifications**](EsxSettingsNotifications.md) |  | 
**pci_device_compliance** | [**EsxSettingsClustersSoftwareReportsPciDeviceCompliance**](EsxSettingsClustersSoftwareReportsPciDeviceCompliance.md) |  | [optional] 
**scan_time** | **DateTime** | HCL Validation check time. | 
**status** | [**EsxSettingsClustersSoftwareReportsComplianceStatus**](EsxSettingsClustersSoftwareReportsComplianceStatus.md) |  | 
**v_san_data_only** | **Boolean** | HCL Validation Computed only for vSAN Clusters. | [optional] 


