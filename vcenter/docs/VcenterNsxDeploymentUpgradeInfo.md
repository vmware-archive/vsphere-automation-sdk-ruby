# VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available_version** | **String** | The version of the NSX available for upgrade. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if any new version is available on vCenter server. | [optional] 
**clusters** | [**Array&lt;VcenterNsxDeploymentUpgradeClusterInfo&gt;**](VcenterNsxDeploymentUpgradeClusterInfo.md) | The list of cluster&#39;s information available in the deployment. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if any operation has been performed using the availableVersion. | [optional] 
**current_operation** | [**VcenterNsxDeploymentUpgradeOperation**](VcenterNsxDeploymentUpgradeOperation.md) |  | [optional] 
**last_precheck_run** | **DateTime** | The time when the last precheck run was completed for the availableVersion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if the last precheck run information is available. | [optional] 
**upgrade_status** | [**VcenterNsxDeploymentUpgradeStatus**](VcenterNsxDeploymentUpgradeStatus.md) |  | 


