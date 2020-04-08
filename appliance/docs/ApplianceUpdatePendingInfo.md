# VSphereAutomation::Appliance::ApplianceUpdatePendingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contents** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of the 1. issues addressed since previous/current version 2. new features/improvements | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**eulas** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of EULAs. This list has multiple entries and can be dynamic based on what we are actually installing. | 
**knowledge_base** | **String** | URL for the knowledge base article describing this update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**name** | **String** | Name of the update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**priority** | [**ApplianceUpdateCommonInfoPriority**](ApplianceUpdateCommonInfoPriority.md) |  | 
**reboot_required** | **Boolean** | Flag indicating whether reboot is required after update. | 
**release_date** | **DateTime** | Update release date. | 
**services_will_be_stopped** | [**Array&lt;ApplianceUpdateServiceInfo&gt;**](ApplianceUpdateServiceInfo.md) | List of the services that will be stopped and restarted during the update installation. | 
**severity** | [**ApplianceUpdateCommonInfoSeverity**](ApplianceUpdateCommonInfoSeverity.md) |  | 
**size** | **Integer** | Download Size of update in Megabytes. | 
**staged** | **Boolean** | Is the update staged | 
**update_type** | [**ApplianceUpdateCommonInfoCategory**](ApplianceUpdateCommonInfoCategory.md) |  | 


