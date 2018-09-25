# VSphereAutomation::Appliance::ApplianceUpdatePendingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contents** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of the 1. issues addressed since previous/current version 2. new features/improvements | [optional] 
**services_will_be_stopped** | [**Array&lt;ApplianceUpdateServiceInfo&gt;**](ApplianceUpdateServiceInfo.md) | List of the services that will be stopped and restarted during the update installation. | [optional] 
**eulas** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of EULAs. This list has multiple entries and can be dynamic based on what we are actually installing. | [optional] 
**staged** | **BOOLEAN** | Is the update staged | [optional] 
**description** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**priority** | [**ApplianceUpdateCommonInfoPriority**](ApplianceUpdateCommonInfoPriority.md) |  | [optional] 
**severity** | [**ApplianceUpdateCommonInfoSeverity**](ApplianceUpdateCommonInfoSeverity.md) |  | [optional] 
**update_type** | [**ApplianceUpdateCommonInfoCategory**](ApplianceUpdateCommonInfoCategory.md) |  | [optional] 
**release_date** | **DateTime** | Update release date. | [optional] 
**reboot_required** | **BOOLEAN** | Flag indicating whether reboot is required after update. | [optional] 
**size** | **Integer** | Download Size of update in Megabytes. | [optional] 


