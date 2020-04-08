# VSphereAutomation::ESX::EsxSettingsClustersSoftwareReportsHardwareCompatibilityCheckSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image_version** | **String** | Target base image version E.g., version &#x3D; BaseImageSpec-&gt;Version {@link esx.settings.BaseImageSpec#version} {@term structure} | 
**commit** | **String** | Spec Identifier of the desired configuration on which the HCL scan is performed to generate this result, populated by the HCL validation. | [optional] 
**notifications** | [**EsxSettingsNotifications**](EsxSettingsNotifications.md) |  | 
**scan_time** | **DateTime** | HCL Validation check time. | 
**status** | [**EsxSettingsClustersSoftwareReportsHardwareCompatibilityComplianceStatus**](EsxSettingsClustersSoftwareReportsHardwareCompatibilityComplianceStatus.md) |  | 
**summary_result** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 


