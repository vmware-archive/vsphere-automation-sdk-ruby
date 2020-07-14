# VSphereAutomation::Content::ContentLibraryItemDownloadSessionModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier of this download session. | [optional] 
**library_item_id** | **String** | The identifier of the library item whose content is being downloaded. | [optional] 
**library_item_content_version** | **String** | The content version of the library item whose content is being downloaded. This value is the {@link ItemModel#contentVersion} at the time when the session is created for the library item. | [optional] 
**error_message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**client_progress** | **Integer** | The progress that has been made with the download. This property is to be updated by the client during the download process to indicate the progress of its work in completing the download. The initial progress is 0 until updated by the client. The maximum value is 100, which indicates that the download is complete. | [optional] 
**state** | [**ContentLibraryItemDownloadSessionModelState**](ContentLibraryItemDownloadSessionModelState.md) |  | [optional] 
**expiration_time** | **DateTime** | Indicates the time after which the session will expire. The session is guaranteed not to expire before this time. | [optional] 


