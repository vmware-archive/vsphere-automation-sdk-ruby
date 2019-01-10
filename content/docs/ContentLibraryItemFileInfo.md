# VSphereAutomation::Content::ContentLibraryItemFileInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**checksum_info** | [**ContentLibraryItemFileChecksumInfo**](ContentLibraryItemFileChecksumInfo.md) |  | [optional] 
**name** | **String** | The name of the file. &lt;p&gt; This value will be unique within the library item for each file. It cannot be an empty string. | 
**size** | **Integer** | The file size, in bytes. The file size is the storage used and not the uploaded or provisioned size. For example, when uploading a disk to a datastore, the amount of storage that the disk consumes may be different from the disk file size. When the file is not cached, the size is 0. | 
**cached** | **BOOLEAN** | Indicates whether the file is on disk or not. | 
**version** | **String** | The version of this file; incremented when a new copy of the file is uploaded. | 


