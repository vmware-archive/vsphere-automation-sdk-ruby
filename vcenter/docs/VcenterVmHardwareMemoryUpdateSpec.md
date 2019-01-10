# VSphereAutomation::VCenter::VcenterVmHardwareMemoryUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**size_mi_b** | **Integer** | New memory size in mebibytes.   The supported range of memory sizes is constrained by the configured guest operating system and virtual hardware version of the virtual machine.    If the virtual machine is running, this value may only be changed if Memory.Info.hot-add-enabled is true, and the new memory size must satisfy the constraints specified by Memory.Info.hot-add-increment-size-mib and Memory.Info.hot-add-limit-mib.  If unset, the value is unchanged. | [optional] 
**hot_add_enabled** | **BOOLEAN** | Flag indicating whether adding memory while the virtual machine is running should be enabled.   Some guest operating systems may consume more resources or perform less efficiently when they run on hardware that supports adding memory while the machine is running.    This field may only be modified if the virtual machine is not powered on.  If unset, the value is unchanged. | [optional] 


