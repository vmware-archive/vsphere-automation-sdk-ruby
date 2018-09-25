# VSphereAutomation::Appliance::ApplianceUpdateStagedInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**staging_complete** | **BOOLEAN** | Is staging complete | [optional] 
**version** | **String** | Version in form of X.Y.Z.P. e.g. 6.5.1.5400 | [optional] 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**priority** | [**ApplianceUpdateCommonInfoPriority**](ApplianceUpdateCommonInfoPriority.md) |  | [optional] 
**severity** | [**ApplianceUpdateCommonInfoSeverity**](ApplianceUpdateCommonInfoSeverity.md) |  | [optional] 
**update_type** | [**ApplianceUpdateCommonInfoCategory**](ApplianceUpdateCommonInfoCategory.md) |  | [optional] 
**release_date** | **DateTime** | Update release date. | [optional] 
**reboot_required** | **BOOLEAN** | Flag indicating whether reboot is required after update. | [optional] 
**size** | **Integer** | Download Size of update in Megabytes. | [optional] 


