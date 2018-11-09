# VSphereAutomation::Content::ContentLibraryItemUpdatesessionFileInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the file. | 
**source_type** | [**ContentLibraryItemUpdatesessionFileSourceType**](ContentLibraryItemUpdatesessionFileSourceType.md) |  | 
**size** | **Integer** | The file size, in bytes as received by the server. This {@term field} is guaranteed to be set when the server has completely received the file. | [optional] 
**checksum_info** | [**ContentLibraryItemFileChecksumInfo**](ContentLibraryItemFileChecksumInfo.md) |  | [optional] 
**source_endpoint** | [**ContentLibraryItemTransferEndpoint**](ContentLibraryItemTransferEndpoint.md) |  | [optional] 
**upload_endpoint** | [**ContentLibraryItemTransferEndpoint**](ContentLibraryItemTransferEndpoint.md) |  | [optional] 
**bytes_transferred** | **Integer** | The number of bytes of this file that have been received by the server. | 
**status** | [**ContentLibraryItemTransferStatus**](ContentLibraryItemTransferStatus.md) |  | 
**error_message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**keep_in_storage** | **BOOLEAN** | Whether or not the file will be kept in storage upon update session completion. The flag is true for most files, and false for metadata files such as manifest and certificate file of update session with library item type OVF. Any file with {@link Info#keepInStorage} set to false will not show up in the list of files returned from {@link content.library.item.File#list} upon update session completion. | [optional] 


