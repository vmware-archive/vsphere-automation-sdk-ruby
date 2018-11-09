# VSphereAutomation::VCenter::VcenterVmHardwareMemoryInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**size_mi_b** | **Integer** | Memory size in mebibytes. | 
**hot_add_enabled** | **BOOLEAN** | Flag indicating whether adding memory while the virtual machine is running is enabled.   Some guest operating systems may consume more resources or perform less efficiently when they run on hardware that supports adding memory while the machine is running.  | 
**hot_add_increment_size_mi_b** | **Integer** | The granularity, in mebibytes, at which memory can be added to a running virtual machine.   When adding memory to a running virtual machine, the amount of memory added must be at least Memory.Info.hot-add-increment-size-mib and the total memory size of the virtual machine must be a multiple of {@link&gt;hotAddIncrementSize}.  Only set when Memory.Info.hot-add-enabled is true and the virtual machine is running. | [optional] 
**hot_add_limit_mi_b** | **Integer** | The maximum amount of memory, in mebibytes, that can be added to a running virtual machine. Only set when Memory.Info.hot-add-enabled is true and the virtual machine is running. | [optional] 


