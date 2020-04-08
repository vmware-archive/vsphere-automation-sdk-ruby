# VSphereAutomation::VCenter::VcenterNsxDeploymentInstallInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_time** | **DateTime** | Time when operation ended. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Install.Info.status is one of SUCCEEDED, FAILED, or CANCELLED. | [optional] 
**messages** | [**Array&lt;VcenterNsxDeploymentInstallMessage&gt;**](VcenterNsxDeploymentInstallMessage.md) | Current set of messages associated with the ongoing deployment. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, no messages available to show. | [optional] 
**operation** | [**VcenterNsxDeploymentInstallOperation**](VcenterNsxDeploymentInstallOperation.md) |  | [optional] 
**phase** | [**VcenterNsxDeploymentInstallPhase**](VcenterNsxDeploymentInstallPhase.md) |  | [optional] 
**progress** | **Float** | Shows the progress of the install operation, expected value is in range [0, 100]. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**start_time** | **DateTime** | Time when operation started. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Install.Info.status is one of SUCCEEDED, FAILED, IN_PROGRESS, PENDING_CANCEL, or CANCELLED. | [optional] 
**status** | [**VcenterNsxDeploymentInstallStatus**](VcenterNsxDeploymentInstallStatus.md) |  | 


