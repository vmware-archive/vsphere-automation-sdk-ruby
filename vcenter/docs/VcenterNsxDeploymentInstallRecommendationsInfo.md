# VSphereAutomation::VCenter::VcenterNsxDeploymentInstallRecommendationsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available_sizes** | [**Array&lt;VcenterNsxDeploymentInstallRecommendationsApplianceSize&gt;**](VcenterNsxDeploymentInstallRecommendationsApplianceSize.md) | List of available NSX deployment sizes. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**management_vcenter** | **String** | Management vCenter for the current vCenter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. unset if vCenter is self managed. | [optional] 
**recommended_placement** | [**VcenterNsxDeploymentPlacementSpec**](VcenterNsxDeploymentPlacementSpec.md) |  | 
**recommended_size** | **String** | Recommended NSX deployment size based on current the vCenter size. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


