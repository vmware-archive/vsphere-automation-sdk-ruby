# VSphereAutomation::VCenter::VcenterVmHardwareBootDeviceEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareBootDeviceType**](VcenterVmHardwareBootDeviceType.md) |  | 
**nic** | **String** | Virtual Ethernet device. Ethernet device to use as boot device for this entry. This field is optional and it is only relevant when the value of Device.Entry.type is ETHERNET. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | [optional] 
**disks** | **Array&lt;String&gt;** | Virtual disk device. List of virtual disks in boot order. This field is optional and it is only relevant when the value of Device.Entry.type is DISK. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.vm.hardware.Disk. | [optional] 


