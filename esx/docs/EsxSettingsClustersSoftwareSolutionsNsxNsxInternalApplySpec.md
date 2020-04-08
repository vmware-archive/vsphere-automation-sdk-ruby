# VSphereAutomation::ESX::EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deployment_mode** | [**EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpecDeploymentMode**](EsxSettingsClustersSoftwareSolutionsNsxNsxInternalApplySpecDeploymentMode.md) |  | [optional] 
**hosts** | **Array&lt;String&gt;** | The hosts within the cluster to be considered during the {@link #apply} {@term operation}. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**parallel_host_remediation** | **Boolean** | Specifies whether the {@term operation} should be carried out serially or in parallel across all the hosts. This field will only exist if the deployment mode selected is live-update. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 


