# VSphereAutomation::Appliance::ApplianceUpdatePendingPrecheckResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_time** | **DateTime** | Time when this precheck was run | 
**estimated_time_to_install** | **Integer** | Rough estimate of time to install the update (minutes). | [optional] 
**estimated_time_to_rollback** | **Integer** | Rough estimate of time to rollback the update (minutes). | [optional] 
**reboot_required** | **BOOLEAN** | Is reboot required to install the update. | 
**issues** | [**ApplianceNotifications**](ApplianceNotifications.md) |  | [optional] 
**questions** | [**Array&lt;ApplianceUpdatePendingQuestion&gt;**](ApplianceUpdatePendingQuestion.md) | List of questions that must be answered to install the update. | 


