# VSphereAutomation::Content::ContentLibraryItemUpdateSessionModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_progress** | **Integer** | The progress that has been made with the upload. This property is to be updated by the client during the upload process to indicate the progress of its work in completing the upload. The initial progress is 0 until updated by the client. The maximum value is 100, which indicates that the update is complete. | [optional] 
**error_message** | [**VapiStdLocalizableMessage**](VapiStdLocalizableMessage.md) |  | [optional] 
**expiration_time** | **DateTime** | Indicates the time after which the session will expire. The session is guaranteed not to expire earlier than this time. | [optional] 
**id** | **String** | The identifier of this update session. | [optional] 
**library_item_content_version** | **String** | The content version of the library item whose content is being modified. This value is the {@link ItemModel#contentVersion} at the time when the session is created for the library item. | [optional] 
**library_item_id** | **String** | The identifier of the library item to which content will be uploaded or removed. | [optional] 
**preview_info** | [**ContentLibraryItemUpdatesessionPreviewInfo**](ContentLibraryItemUpdatesessionPreviewInfo.md) |  | [optional] 
**state** | [**ContentLibraryItemUpdateSessionModelState**](ContentLibraryItemUpdateSessionModelState.md) |  | [optional] 
**warning_behavior** | [**Array&lt;ContentLibraryItemUpdatesessionWarningBehavior&gt;**](ContentLibraryItemUpdatesessionWarningBehavior.md) | Indicates the update session behavior if warnings are raised in the session preview. Any warning which is raised by session preview but not ignored by the client will, by default, fail the update session. | [optional] 


