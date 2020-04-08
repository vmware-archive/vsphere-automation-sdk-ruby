# VSphereAutomation::Appliance::ApplianceUpdateHistoryInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build** | **Integer** | The build number of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**eula_accept_time** | **DateTime** | Time when the EULA was accepted for the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**install_date** | **DateTime** | Installation date and time. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**knowledge_base** | **String** | URL for the knowledge base article describing this update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**name** | **String** | Name of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**priority** | [**ApplianceUpdateCommonInfoPriority**](ApplianceUpdateCommonInfoPriority.md) |  | 
**product** | **String** | Product name of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**reboot_required** | **Boolean** | Flag indicating whether reboot is required after update. | 
**release_date** | **DateTime** | Update release date. | 
**severity** | [**ApplianceUpdateCommonInfoSeverity**](ApplianceUpdateCommonInfoSeverity.md) |  | 
**size** | **Integer** | Download Size of update in Megabytes. | 
**tags** | **String** | Tags associated with update (CVE Score). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**update_repo** | **String** | URL of the update repository from which this update was downloaded. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**update_type** | [**ApplianceUpdateCommonInfoCategory**](ApplianceUpdateCommonInfoCategory.md) |  | 
**vendor** | **String** | Name of vendor who provided the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


