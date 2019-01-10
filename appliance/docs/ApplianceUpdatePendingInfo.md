# VSphereAutomation::Appliance::ApplianceUpdatePendingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contents** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of the 1. issues addressed since previous/current version 2. new features/improvements | 
**services_will_be_stopped** | [**Array&lt;ApplianceUpdateServiceInfo&gt;**](ApplianceUpdateServiceInfo.md) | List of the services that will be stopped and restarted during the update installation. | 
**eulas** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of EULAs. This list has multiple entries and can be dynamic based on what we are actually installing. | 
**staged** | **BOOLEAN** | Is the update staged | 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | 
**priority** | [**ApplianceUpdateCommonInfoPriority**](ApplianceUpdateCommonInfoPriority.md) |  | 
**severity** | [**ApplianceUpdateCommonInfoSeverity**](ApplianceUpdateCommonInfoSeverity.md) |  | 
**update_type** | [**ApplianceUpdateCommonInfoCategory**](ApplianceUpdateCommonInfoCategory.md) |  | 
**release_date** | **DateTime** | Update release date. | 
**reboot_required** | **BOOLEAN** | Flag indicating whether reboot is required after update. | 
**size** | **Integer** | Download Size of update in Megabytes. | 


