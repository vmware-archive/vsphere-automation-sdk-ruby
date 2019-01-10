# VSphereAutomation::Appliance::ApplianceUpdateSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **String** | Version in form of X.Y.Z.P. e.g. 6.5.1.5400 | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**priority** | [**ApplianceUpdateCommonInfoPriority**](ApplianceUpdateCommonInfoPriority.md) |  | 
**severity** | [**ApplianceUpdateCommonInfoSeverity**](ApplianceUpdateCommonInfoSeverity.md) |  | 
**update_type** | [**ApplianceUpdateCommonInfoCategory**](ApplianceUpdateCommonInfoCategory.md) |  | 
**release_date** | **DateTime** | Update release date. | 
**reboot_required** | **BOOLEAN** | Flag indicating whether reboot is required after update. | 
**size** | **Integer** | Download Size of update in Megabytes. | 


