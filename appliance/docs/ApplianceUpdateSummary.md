# VSphereAutomation::Appliance::ApplianceUpdateSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**name** | **String** | Name of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**priority** | [**ApplianceUpdateCommonInfoPriority**](ApplianceUpdateCommonInfoPriority.md) |  | 
**reboot_required** | **Boolean** | Flag indicating whether reboot is required after update. | 
**release_date** | **DateTime** | Update release date. | 
**severity** | [**ApplianceUpdateCommonInfoSeverity**](ApplianceUpdateCommonInfoSeverity.md) |  | 
**size** | **Integer** | Download Size of update in Megabytes. | 
**update_type** | [**ApplianceUpdateCommonInfoCategory**](ApplianceUpdateCommonInfoCategory.md) |  | 
**version** | **String** | Version in form of X.Y.Z.P. e.g. 6.5.1.5400 | 


