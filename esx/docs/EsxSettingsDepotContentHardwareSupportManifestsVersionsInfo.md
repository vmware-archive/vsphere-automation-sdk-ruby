# VSphereAutomation::ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image_versions** | **Array&lt;String&gt;** | Set of compatible base image versions, possibly truncated to at most the update string (e.g. \&quot;7.0.1\&quot; for \&quot;7.0u1\&quot;) if the remainder should be wildcarded. | 
**category** | [**EsxSettingsDepotContentHardwareSupportManifestsVersionsCategoryType**](EsxSettingsDepotContentHardwareSupportManifestsVersionsCategoryType.md) |  | 
**components** | [**Array&lt;EsxSettingsDepotContentHardwareSupportManifestsVersionsComponentInfo&gt;**](EsxSettingsDepotContentHardwareSupportManifestsVersionsComponentInfo.md) | List of components in this HSP manifest. | 
**description** | **String** | Description of the HSP manifest. | 
**display_name** | **String** | Display name of the OEM add-on. | 
**display_version** | **String** | Human readable version of the HSP manifest. | 
**hardware_support_info** | [**EsxSettingsDepotContentHardwareSupportManifestsVersionsHardwareSupportSourceInfo**](EsxSettingsDepotContentHardwareSupportManifestsVersionsHardwareSupportSourceInfo.md) |  | 
**kb** | **String** | Link to documentation article related to this the HSP manifest. | 
**release_date** | **DateTime** | Release date of the HSP manifest. | 
**removed_components** | [**Array&lt;EsxSettingsDepotContentHardwareSupportManifestsVersionsRemovedComponentInfo&gt;**](EsxSettingsDepotContentHardwareSupportManifestsVersionsRemovedComponentInfo.md) | List of components removed by this HSP manifest. | 
**summary** | **String** | Summary of the HSP manifest. | 
**vendor** | **String** | Vendor of the HSP manifest. | 


