# VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersUpgradeSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desired_version** | **String** | Version number the cluster is going to be upgraded to. | 
**ignore_precheck_warnings** | **Boolean** | If true, the upgrade workflow will ignore any pre-check warnings and proceed with the upgrade. If unset, the upgrade workflow will not ignore pre-check warnings and fail the upgrade. It is equivalent to setting the value to false. The workflow adopts a conservative approach of failing the upgrade if unset to solely let the user decide whether to force the upgrade despite the warnings. | [optional] 


