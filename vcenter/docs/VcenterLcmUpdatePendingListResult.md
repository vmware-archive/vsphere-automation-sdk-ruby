# VSphereAutomation::VCenter::VcenterLcmUpdatePendingListResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issues** | [**VcenterLcmNotifications**](VcenterLcmNotifications.md) |  | [optional] 
**last_check_time** | **DateTime** | Time when the software depo was last checked. | 
**update_count** | **Integer** | Number of pending updates Only set if there are available updates | [optional] 
**updates** | [**Array&lt;VcenterLcmUpdatePendingSummary&gt;**](VcenterLcmUpdatePendingSummary.md) | List of pending update details | 
**upgrade_count** | **Integer** | Number of pending upgrades Only set if there are available upgrades | [optional] 


