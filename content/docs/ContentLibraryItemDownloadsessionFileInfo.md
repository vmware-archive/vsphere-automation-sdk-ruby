# VSphereAutomation::Content::ContentLibraryItemDownloadsessionFileInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bytes_transferred** | **Integer** | The number of bytes that have been transferred by the server so far for making this file prepared for download. This value may stay at zero till the client starts downloading the file. | 
**checksum_info** | [**ContentLibraryItemFileChecksumInfo**](ContentLibraryItemFileChecksumInfo.md) |  | [optional] 
**download_endpoint** | [**ContentLibraryItemTransferEndpoint**](ContentLibraryItemTransferEndpoint.md) |  | [optional] 
**error_message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**name** | **String** | The name of the file. | 
**size** | **Integer** | The file size, in bytes. | [optional] 
**status** | [**ContentLibraryItemDownloadsessionFilePrepareStatus**](ContentLibraryItemDownloadsessionFilePrepareStatus.md) |  | 


