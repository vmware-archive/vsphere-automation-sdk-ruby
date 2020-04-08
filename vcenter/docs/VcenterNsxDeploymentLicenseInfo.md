# VSphereAutomation::VCenter::VcenterNsxDeploymentLicenseInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license_key** | **String** | License key to be applied or already applied to NSX Manager Appliance. In case multiple license is applied the higest license which is WCP compatible is returned. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**messages** | [**Array&lt;VcenterNsxDeploymentLicenseValidationMessage&gt;**](VcenterNsxDeploymentLicenseValidationMessage.md) | Validation messages on the license already applied or being validated. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, no messages available to show. | [optional] 


