# VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_detect** | **Boolean** | Flag indicating whether the virtual floppy drive is configured to automatically detect a suitable host device. This field is optional and it is only relevant when the value of Floppy.BackingInfo.type is HOST_DEVICE. | [optional] 
**host_device** | **String** | Name of the host device backing the virtual floppy drive.    This field will be unset if Floppy.BackingInfo.auto-detect is true and the virtual floppy drive is not connected or no suitable device is available on the host. | [optional] 
**image_file** | **String** | Path of the image file backing the virtual floppy drive. This field is optional and it is only relevant when the value of Floppy.BackingInfo.type is IMAGE_FILE. | [optional] 
**type** | [**VcenterVmHardwareFloppyBackingType**](VcenterVmHardwareFloppyBackingType.md) |  | 


