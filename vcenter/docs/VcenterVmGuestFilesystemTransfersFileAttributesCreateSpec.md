# VSphereAutomation::VCenter::VcenterVmGuestFilesystemTransfersFileAttributesCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_accessed** | **DateTime** | The date and time the file was last accessed. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific access time is desired. | [optional] 
**last_modified** | **DateTime** | The date and time the file was last modified. If this property is not specified the default value will be the time when the file is created inside the guest. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if a specific modification time is desired. | [optional] 
**posix** | [**VcenterVmGuestFilesystemTransfersPosixFileAttributesCreateSpec**](VcenterVmGuestFilesystemTransfersPosixFileAttributesCreateSpec.md) |  | [optional] 
**windows** | [**VcenterVmGuestFilesystemTransfersWindowsFileAttributesCreateSpec**](VcenterVmGuestFilesystemTransfersWindowsFileAttributesCreateSpec.md) |  | [optional] 


