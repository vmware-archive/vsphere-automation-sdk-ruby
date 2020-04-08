# VSphereAutomation::VCenter::VcenterContentRegistriesHarborProjectsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_url** | **String** | URL to access the harbor project through docker client. | [optional] 
**config_status** | [**VcenterContentRegistriesHarborProjectsConfigStatus**](VcenterContentRegistriesHarborProjectsConfigStatus.md) |  | 
**creation_time** | **DateTime** | The date and time when the harbor project creation API was triggered and project identifier generated. | 
**message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**name** | **String** | Name of the Harbor project. Should be between 1-63 characters long alphanumeric string and may contain the following characters: a-z,0-9, and &#39;-&#39;. Must be starting with characters or numbers, with the &#39;-&#39; character allowed anywhere except the first or last character. | 
**scope** | [**VcenterContentRegistriesHarborProjectsScope**](VcenterContentRegistriesHarborProjectsScope.md) |  | 
**update_time** | **DateTime** | The date and time when the harbor project purge API was triggered. In case no purge was triggered, {@name #updateTime} is same as {@name #creationTime}. | [optional] 


