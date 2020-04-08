# VSphereAutomation::VCenter::VcenterVmGuestLocalFilesystemInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**capacity** | **Integer** | Total capacity of the file system, in bytes. | 
**filesystem** | **String** | Filesystem type, if known. For example, ext3 or NTFS. set if VMware Tools reports a value. | [optional] 
**free_space** | **Integer** | Free space on the file system, in bytes. | 
**mappings** | [**Array&lt;VcenterVmGuestLocalFilesystemVirtualDiskMapping&gt;**](VcenterVmGuestLocalFilesystemVirtualDiskMapping.md) | VirtualDisks backing the guest partition, if known. This field is optional because it was added in a newer version than its parent node. | [optional] 


