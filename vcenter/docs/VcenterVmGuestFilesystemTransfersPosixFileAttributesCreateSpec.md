# VSphereAutomation::VCenter::VcenterVmGuestFilesystemTransfersPosixFileAttributesCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_id** | **Integer** | The group ID. If this property is not specified when passing a Transfers.PosixFileAttributesCreateSpec object to Transfers.put, the default value will be the group Id of the user who invoked the file transfer operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Defaults to gid of user invoking the operation. | [optional] 
**owner_id** | **Integer** | The owner ID. If this property is not specified when passing a Transfers.PosixFileAttributesCreateSpec object to Transfers.put, the default value will be the owner Id of the user who invoked the file transfer operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Defaults to uid of user invoking the operation. | [optional] 
**permissions** | **String** | The file permissions in chmod(2) format. If this property is not specified when passing a Transfers.PosixFileAttributesCreateSpec object to Transfers.put, the file will be created with 0644 permissions. This field is interpreted as octal. XXX expand on this with a description of what the numbers mean. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Defaults to 0644. | [optional] 


