# VSphereAutomation::VCenter::VcenterLcmUpdatePendingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build** | **String** | Build number of the vCenter Release | 
**category** | [**VcenterLcmUpdatePendingCategory**](VcenterLcmUpdatePendingCategory.md) |  | 
**description** | **String** | Description of the vSphere update | 
**execute_url** | **String** | VAMI or ISO URL for update or upgrade execute phase redirection | 
**pending_update** | **String** | Identifier of the given vSphere update When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.lcm.update.pending. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.lcm.update.pending. | 
**reboot_required** | **Boolean** | Flag to suggest a reboot after the release is applied | 
**release_date** | **DateTime** | Release date of the vSphere update or patch | 
**release_notes** | **Array&lt;String&gt;** | List of URI pointing to patch or update release notes | 
**severity** | [**VcenterLcmUpdatePendingSeverityType**](VcenterLcmUpdatePendingSeverityType.md) |  | 
**update_type** | [**VcenterLcmUpdatePendingUpdateType**](VcenterLcmUpdatePendingUpdateType.md) |  | 
**version** | **String** | Version of the vSphere update or patch | 


