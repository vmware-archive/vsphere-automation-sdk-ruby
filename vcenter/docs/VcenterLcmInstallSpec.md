# VSphereAutomation::VCenter::VcenterLcmInstallSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delay_tolerance** | **Integer** | The amount of minutes by which the execution is allowed to be delayed. This field will be ignored if scheduled start is not provided. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if unset, the delay tolerance will be 60 minutes. | [optional] 
**destination_appliance** | [**VcenterLcmDestinationAppliance**](VcenterLcmDestinationAppliance.md) |  | 
**destination_location** | [**VcenterLcmDestinationLocation**](VcenterLcmDestinationLocation.md) |  | 
**scheduled_start** | **DateTime** | The time to start the execution of deploying an appliance. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if unset, the install operation will start immediately. | [optional] 


