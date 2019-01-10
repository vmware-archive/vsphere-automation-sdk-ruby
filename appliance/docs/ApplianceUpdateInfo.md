# VSphereAutomation::Appliance::ApplianceUpdateInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | [**ApplianceUpdateState**](ApplianceUpdateState.md) |  | 
**task** | [**ApplianceTaskInfo**](ApplianceTaskInfo.md) |  | [optional] 
**version** | **String** | Version of base appliance if state is UP_TO_DATE Version of update being staged or installed if state is INSTALL_IN_PROGRESS or STAGE_IN_PROGRESS Version of update staged if state is UPDATES_PENDING Version of update failed if state is INSTALL_FAILED or ROLLBACK_IN_PROGRESS | 
**latest_query_time** | **DateTime** | Timestamp of latest query to update repository. | [optional] 


