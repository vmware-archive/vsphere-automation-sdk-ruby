# VSphereAutomation::VCenter::VcenterFolderFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**folders** | **Array&lt;String&gt;** | Identifiers of folders that can match the filter. If unset or empty, folders with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
**names** | **Array&lt;String&gt;** | Names that folders must have to match the filter (see Folder.Summary.name). If unset or empty, folders with any name match the filter. | [optional] 
**type** | [**VcenterFolderType**](VcenterFolderType.md) |  | [optional] 
**parent_folders** | **Array&lt;String&gt;** | Folders that must contain the folder for the folder to match the filter. If unset or empty, folder in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
**datacenters** | **Array&lt;String&gt;** | Datacenters that must contain the folder for the folder to match the filter. If unset or empty, folder in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 


