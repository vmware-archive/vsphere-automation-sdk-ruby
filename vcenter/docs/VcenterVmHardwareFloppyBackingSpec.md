# VSphereAutomation::VCenter::VcenterVmHardwareFloppyBackingSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_device** | **String** | Name of the device that should be used as the virtual floppy drive backing. If unset, the virtual floppy drive will be configured to automatically detect a suitable host device. | [optional] 
**image_file** | **String** | Path of the image file that should be used as the virtual floppy drive backing. This field is optional and it is only relevant when the value of Floppy.BackingSpec.type is IMAGE_FILE. | [optional] 
**type** | [**VcenterVmHardwareFloppyBackingType**](VcenterVmHardwareFloppyBackingType.md) |  | 


