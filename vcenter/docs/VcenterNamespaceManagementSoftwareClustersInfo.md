# VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available_versions** | **Array&lt;String&gt;** | Set of available versions can be upgraded to. | 
**current_version** | **String** | Current version of the cluster. | 
**last_upgraded_date** | **DateTime** | Date of last successful upgrade. If unset, the cluster has not yet been upgraded. | [optional] 
**messages** | [**Array&lt;VcenterNamespaceManagementSoftwareClustersMessage&gt;**](VcenterNamespaceManagementSoftwareClustersMessage.md) | Current set of messages associated with the cluster version. | 
**state** | [**VcenterNamespaceManagementSoftwareClustersState**](VcenterNamespaceManagementSoftwareClustersState.md) |  | 
**upgrade_status** | [**VcenterNamespaceManagementSoftwareClustersUpgradeStatus**](VcenterNamespaceManagementSoftwareClustersUpgradeStatus.md) |  | [optional] 


