# VSphereAutomation::VCenter::VcenterVmHardwareInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | [**VcenterVmHardwareVersion**](VcenterVmHardwareVersion.md) |  | 
**upgrade_policy** | [**VcenterVmHardwareUpgradePolicy**](VcenterVmHardwareUpgradePolicy.md) |  | 
**upgrade_version** | [**VcenterVmHardwareVersion**](VcenterVmHardwareVersion.md) |  | [optional] 
**upgrade_status** | [**VcenterVmHardwareUpgradeStatus**](VcenterVmHardwareUpgradeStatus.md) |  | 
**upgrade_error** | **String** | Reason for the scheduled upgrade failure. This field is optional and it is only relevant when the value of Hardware.Info.upgrade-status is FAILED. | [optional] 


