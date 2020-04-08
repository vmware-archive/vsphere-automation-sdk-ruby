# VSphereAutomation::VCenter::VcenterVmGuestFilesystemFilesFileAttributesInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filesystem_family** | [**VcenterVmGuestFilesystemFilesFilesystemFamily**](VcenterVmGuestFilesystemFilesFilesystemFamily.md) |  | 
**last_accessed** | **DateTime** | The date and time the file was last accessed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**last_modified** | **DateTime** | The date and time the file was last modified. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**posix_attributes** | [**VcenterVmGuestFilesystemFilesPosixFileAttributesInfo**](VcenterVmGuestFilesystemFilesPosixFileAttributesInfo.md) |  | [optional] 
**symlink_target** | **String** | The target for the file if it&#39;s a symbolic link. This is currently only set for Posix guest operating systems, but may be supported in the future on Windows guest operating systems that support symbolic links. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Set if the file is a symbolic link. | [optional] 
**win_attributes** | [**VcenterVmGuestFilesystemFilesWindowsFileAttributesInfo**](VcenterVmGuestFilesystemFilesWindowsFileAttributesInfo.md) |  | [optional] 


