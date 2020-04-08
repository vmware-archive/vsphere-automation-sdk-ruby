# VSphereAutomation::VCenter::VcenterVmHardwareCdromBackingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_detect** | **Boolean** | Flag indicating whether the virtual CD-ROM device is configured to automatically detect a suitable host device. This field is optional and it is only relevant when the value of Cdrom.BackingInfo.type is HOST_DEVICE. | [optional] 
**device_access_type** | [**VcenterVmHardwareCdromDeviceAccessType**](VcenterVmHardwareCdromDeviceAccessType.md) |  | [optional] 
**host_device** | **String** | Name of the host device backing the virtual CD-ROM device.    This field will be unset if Cdrom.BackingInfo.auto-detect is true and the virtual CD-ROM device is not connected or no suitable device is available on the host. | [optional] 
**iso_file** | **String** | Path of the image file backing the virtual CD-ROM device. This field is optional and it is only relevant when the value of Cdrom.BackingInfo.type is ISO_FILE. | [optional] 
**type** | [**VcenterVmHardwareCdromBackingType**](VcenterVmHardwareCdromBackingType.md) |  | 


