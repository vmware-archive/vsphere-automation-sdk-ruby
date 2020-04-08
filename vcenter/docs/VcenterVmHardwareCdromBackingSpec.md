# VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_access_type** | [**VcenterVmHardwareCdromDeviceAccessType**](VcenterVmHardwareCdromDeviceAccessType.md) |  | [optional] 
**host_device** | **String** | Name of the device that should be used as the virtual CD-ROM device backing. If unset, the virtual CD-ROM device will be configured to automatically detect a suitable host device. | [optional] 
**iso_file** | **String** | Path of the image file that should be used as the virtual CD-ROM device backing. This field is optional and it is only relevant when the value of Cdrom.BackingSpec.type is ISO_FILE. | [optional] 
**type** | [**VcenterVmHardwareCdromBackingType**](VcenterVmHardwareCdromBackingType.md) |  | 


