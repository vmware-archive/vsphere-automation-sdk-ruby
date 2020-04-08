# VSphereAutomation::VCenter::VcenterVmGuestCustomizationInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_time** | **DateTime** | Time when the customization process has completed inside the guest operating system. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be unset if the status is not SUCCEEDED or FAILED. | [optional] 
**error** | **String** | Description of the error if the Customization.Info.status of customization operation is FAILED. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be unset if the status is not FAILED or there is no information available for the error. | [optional] 
**start_time** | **DateTime** | Time when the customization process has started inside the guest operating system. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be unset if the status is PENDING. | [optional] 
**status** | [**VcenterVmGuestCustomizationInfoStatus**](VcenterVmGuestCustomizationInfoStatus.md) |  | 


