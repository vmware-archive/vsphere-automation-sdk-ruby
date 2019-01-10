# VSphereAutomation::VCenter::VcenterVMInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guest_os** | [**VcenterVmGuestOS**](VcenterVmGuestOS.md) |  | 
**name** | **String** | Virtual machine name. | 
**power_state** | [**VcenterVmPowerState**](VcenterVmPowerState.md) |  | 
**hardware** | [**VcenterVmHardwareInfo**](VcenterVmHardwareInfo.md) |  | 
**boot** | [**VcenterVmHardwareBootInfo**](VcenterVmHardwareBootInfo.md) |  | 
**boot_devices** | [**Array&lt;VcenterVmHardwareBootDeviceEntry&gt;**](VcenterVmHardwareBootDeviceEntry.md) | Boot device configuration. If the list has no entries, a server-specific default boot sequence is used. | 
**cpu** | [**VcenterVmHardwareCpuInfo**](VcenterVmHardwareCpuInfo.md) |  | 
**memory** | [**VcenterVmHardwareMemoryInfo**](VcenterVmHardwareMemoryInfo.md) |  | 
**disks** | **Array&lt;Object&gt;** | List of disks. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | 
**nics** | **Array&lt;Object&gt;** | List of Ethernet adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | 
**cdroms** | **Array&lt;Object&gt;** | List of CD-ROMs. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Cdrom. | 
**floppies** | **Array&lt;Object&gt;** | List of floppy drives. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Floppy. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Floppy. | 
**parallel_ports** | **Array&lt;Object&gt;** | List of parallel ports. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | 
**serial_ports** | **Array&lt;Object&gt;** | List of serial ports. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | 
**sata_adapters** | **Array&lt;Object&gt;** | List of SATA adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. | 
**scsi_adapters** | **Array&lt;Object&gt;** | List of SCSI adapters. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. | 


