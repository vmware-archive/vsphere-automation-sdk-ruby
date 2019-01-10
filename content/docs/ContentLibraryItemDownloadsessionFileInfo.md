# VSphereAutomation::Content::ContentLibraryItemDownloadsessionFileInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the file. | 
**size** | **Integer** | The file size, in bytes. | [optional] 
**bytes_transferred** | **Integer** | The number of bytes that have been transferred by the server so far for making this file prepared for download. This value may stay at zero till the client starts downloading the file. | 
**status** | [**ContentLibraryItemDownloadsessionFilePrepareStatus**](ContentLibraryItemDownloadsessionFilePrepareStatus.md) |  | 
**download_endpoint** | [**ContentLibraryItemTransferEndpoint**](ContentLibraryItemTransferEndpoint.md) |  | [optional] 
**checksum_info** | [**ContentLibraryItemFileChecksumInfo**](ContentLibraryItemFileChecksumInfo.md) |  | [optional] 
**error_message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 


