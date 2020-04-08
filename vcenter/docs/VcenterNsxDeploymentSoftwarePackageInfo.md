# VSphereAutomation::VCenter::VcenterNsxDeploymentSoftwarePackageInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;VcenterNsxDeploymentSoftwarePackageMessage&gt;**](VcenterNsxDeploymentSoftwarePackageMessage.md) | The list of error messages. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of SoftwarePackage.Info.status is INTERRUPTED. | [optional] 
**progress** | [**VcenterNsxDeploymentSoftwarePackageProgress**](VcenterNsxDeploymentSoftwarePackageProgress.md) |  | [optional] 
**release_notes_url** | **String** | The link for release notes, if any. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if release note is available. | [optional] 
**stage_type** | [**VcenterNsxDeploymentSoftwarePackageType**](VcenterNsxDeploymentSoftwarePackageType.md) |  | [optional] 
**staged_version** | **String** | The version of the already staged NSX binary. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**staging_version** | **String** | The NSX binary version which is currently staging. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of SoftwarePackage.Info.status is one of IN_PROGRESS or INTERRUPTED. | [optional] 
**status** | [**VcenterNsxDeploymentSoftwarePackageStatus**](VcenterNsxDeploymentSoftwarePackageStatus.md) |  | 
**warnings** | [**Array&lt;VcenterNsxDeploymentSoftwarePackageMessage&gt;**](VcenterNsxDeploymentSoftwarePackageMessage.md) | The list of warning messages. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of SoftwarePackage.Info.status is INTERRUPTED. | [optional] 


