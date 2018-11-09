# VSphereAutomation::VCenter::VcenterVMSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vm** | **String** | Identifier of the virtual machine. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine. | 
**name** | **String** | Name of the Virtual machine. | 
**power_state** | [**VcenterVmPowerState**](VcenterVmPowerState.md) |  | 
**cpu_count** | **Integer** | Number of CPU cores. This field will be unset if the virtual machine configuration is not available. For example, the configuration information would be unavailable if the server is unable to access the virtual machine files on disk, and is often also unavailable during the intial phases of virtual machine creation. | [optional] 
**memory_size_mi_b** | **Integer** | Memory size in mebibytes. This field will be unset if the virtual machine configuration is not available. For example, the configuration information would be unavailable if the server is unable to access the virtual machine files on disk, and is often also unavailable during the intial phases of virtual machine creation. | [optional] 


