# VSphereAutomation::VCenter::VcenterVMInstantCloneSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bios_uuid** | **String** | 128-bit SMBIOS UUID of a virtual machine represented as a hexadecimal string in \&quot;12345678-abcd-1234-cdef-123456789abc\&quot; format. If unset, will be generated. | [optional] 
**disconnect_all_nics** | **Boolean** | Indicates whether all NICs on the destination virtual machine should be disconnected from the newtwork If unset, connection status of all NICs on the destination virtual machine will be the same as on the source virtual machine. | [optional] 
**name** | **String** | Name of the new virtual machine. | 
**nics_to_update** | [**Array&lt;VcenterVMInstantCloneSpecNicsToUpdate&gt;**](VcenterVMInstantCloneSpecNicsToUpdate.md) | Map of NICs to update. If unset, no NICs will be updated. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | [optional] 
**parallel_ports_to_update** | [**Array&lt;VcenterVMInstantCloneSpecParallelPortsToUpdate&gt;**](VcenterVMInstantCloneSpecParallelPortsToUpdate.md) | Map of parallel ports to Update. If unset, no parallel ports will be updated. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | [optional] 
**placement** | [**VcenterVMInstantClonePlacementSpec**](VcenterVMInstantClonePlacementSpec.md) |  | [optional] 
**serial_ports_to_update** | [**Array&lt;VcenterVMInstantCloneSpecSerialPortsToUpdate&gt;**](VcenterVMInstantCloneSpecSerialPortsToUpdate.md) | Map of serial ports to Update. If unset, no serial ports will be updated. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | [optional] 
**source** | **String** | Virtual machine to InstantClone from. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine. | 


