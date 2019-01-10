# VSphereAutomation::VCenter::VcenterVmHardwareParallelBackingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareParallelBackingType**](VcenterVmHardwareParallelBackingType.md) |  | 
**file** | **String** | Path of the file backing the virtual parallel port. This field is optional and it is only relevant when the value of Parallel.BackingInfo.type is FILE. | [optional] 
**host_device** | **String** | Name of the device backing the virtual parallel port.    This field will be unset if Parallel.BackingInfo.auto-detect is true and the virtual parallel port is not connected or no suitable device is available on the host. | [optional] 
**auto_detect** | **BOOLEAN** | Flag indicating whether the virtual parallel port is configured to automatically detect a suitable host device. This field is optional and it is only relevant when the value of Parallel.BackingInfo.type is HOST_DEVICE. | [optional] 


