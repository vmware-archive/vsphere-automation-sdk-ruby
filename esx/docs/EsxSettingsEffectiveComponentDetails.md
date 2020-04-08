# VSphereAutomation::ESX::EsxSettingsEffectiveComponentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | Display name of the component. | 
**display_version** | **String** | Human readable version of the component. | 
**note** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**overridden_components** | [**Array&lt;EsxSettingsComponentOverrideInfo&gt;**](EsxSettingsComponentOverrideInfo.md) | List of other component versions present in base-image, add-ons or solutions that this component is overriding. For example, if a component version-1 was implicitly present in the base-image, but user wants it to be changed to version-2. In that case, {@link #source} would be USER and there will be one entry in this list indicating base-image component version-1 is being overridden. | 
**source** | [**EsxSettingsComponentSource**](EsxSettingsComponentSource.md) |  | 
**vendor** | **String** | Vendor of the component. | 


