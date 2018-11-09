# VSphereAutomation::VCenter::VcenterVmPowerInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | [**VcenterVmPowerState**](VcenterVmPowerState.md) |  | 
**clean_power_off** | **BOOLEAN** | Flag indicating whether the virtual machine was powered off cleanly. This field may be used to detect that the virtual machine crashed unexpectedly and should be restarted. This field is optional and it is only relevant when the value of Power.Info.state is POWERED_OFF. | [optional] 


