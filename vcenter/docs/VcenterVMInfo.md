# VSphereAutomation::VCenter::VcenterVMInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guest_os** | [**VcenterVmGuestOS**](VcenterVmGuestOS.md) |  | [optional] 
**name** | **String** | Virtual machine name. | [optional] 
**power_state** | [**VcenterVmPowerState**](VcenterVmPowerState.md) |  | [optional] 
**hardware** | [**VcenterVmHardwareInfo**](VcenterVmHardwareInfo.md) |  | [optional] 
**boot** | [**VcenterVmHardwareBootInfo**](VcenterVmHardwareBootInfo.md) |  | [optional] 
**boot_devices** | [**Array&lt;VcenterVmHardwareBootDeviceEntry&gt;**](VcenterVmHardwareBootDeviceEntry.md) | Boot device configuration. If the list has no entries, a server-specific default boot sequence is used. | [optional] 
**cpu** | [**VcenterVmHardwareCpuInfo**](VcenterVmHardwareCpuInfo.md) |  | [optional] 
**memory** | [**VcenterVmHardwareMemoryInfo**](VcenterVmHardwareMemoryInfo.md) |  | [optional] 
**disks** | **Array&lt;Object&gt;** | List of disks. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.Disk. | [optional] 
**nics** | **Array&lt;Object&gt;** | List of Ethernet adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.Ethernet. | [optional] 
**cdroms** | **Array&lt;Object&gt;** | List of CD-ROMs. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.Cdrom. | [optional] 
**floppies** | **Array&lt;Object&gt;** | List of floppy drives. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Floppy. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.Floppy. | [optional] 
**parallel_ports** | **Array&lt;Object&gt;** | List of parallel ports. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.ParallelPort. | [optional] 
**serial_ports** | **Array&lt;Object&gt;** | List of serial ports. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.SerialPort. | [optional] 
**sata_adapters** | **Array&lt;Object&gt;** | List of SATA adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.SataAdapter. | [optional] 
**scsi_adapters** | **Array&lt;Object&gt;** | List of SCSI adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: com.vmware.vcenter.vm.hardware.ScsiAdapter. | [optional] 


