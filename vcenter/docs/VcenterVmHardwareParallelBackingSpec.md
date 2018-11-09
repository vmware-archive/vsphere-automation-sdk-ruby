# VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareParallelBackingType**](VcenterVmHardwareParallelBackingType.md) |  | 
**file** | **String** | Path of the file that should be used as the virtual parallel port backing. This field is optional and it is only relevant when the value of Parallel.BackingSpec.type is FILE. | [optional] 
**host_device** | **String** | Name of the device that should be used as the virtual parallel port backing. If unset, the virtual parallel port will be configured to automatically detect a suitable host device. | [optional] 


