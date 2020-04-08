# VSphereAutomation::VCenter::VcenterNsxDeploymentInstallInstallSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appliance** | [**VcenterNsxDeploymentApplianceSpec**](VcenterNsxDeploymentApplianceSpec.md) |  | 
**placement** | [**VcenterNsxDeploymentPlacementSpec**](VcenterNsxDeploymentPlacementSpec.md) |  | 
**policy** | **String** | Spec which describes configuration of the new NSX appliance to be deployed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, default storage policy will be set. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.StoragePolicy. | [optional] 


