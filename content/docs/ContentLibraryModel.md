# VSphereAutomation::Content::ContentLibraryModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier which uniquely identifies this {@name LibraryModel}. | [optional] 
**creation_time** | **DateTime** | The date and time when this library was created. | [optional] 
**description** | **String** | A human-readable description for this library. | [optional] 
**last_modified_time** | **DateTime** | The date and time when this library was last updated. &lt;p&gt; This {@term field} is updated automatically when the library properties are changed. This {@term field} is not affected by adding, removing, or modifying a library item or its content within the library. Tagging the library or syncing the subscribed library does not alter this {@term field}. | [optional] 
**last_sync_time** | **DateTime** | The date and time when this library was last synchronized. &lt;p&gt; This {@term field} applies only to subscribed libraries. It is updated every time a synchronization is triggered on the library. The value is {@term unset} for a local library. | [optional] 
**name** | **String** | The name of the library. &lt;p&gt; A Library is identified by a human-readable name. Library names cannot be undefined or an empty string. Names do not have to be unique. | [optional] 
**storage_backings** | [**Array&lt;ContentLibraryStorageBacking&gt;**](ContentLibraryStorageBacking.md) | The list of default storage backings which are available for this library. &lt;p&gt; A {@link StorageBacking} defines a default storage location which can be used to store files for library items in this library. Some library items, for instance, virtual machine template items, support files that may be distributed across various storage backings. One or more item files may or may not be located on the default storage backing. &lt;p&gt; Multiple default storage locations are not currently supported but may become supported in future releases. | [optional] 
**type** | [**ContentLibraryModelLibraryType**](ContentLibraryModelLibraryType.md) |  | [optional] 
**optimization_info** | [**ContentLibraryOptimizationInfo**](ContentLibraryOptimizationInfo.md) |  | [optional] 
**version** | **String** | A version number which is updated on metadata changes. This value allows clients to detect concurrent updates and prevent accidental clobbering of data. &lt;p&gt; This value represents a number which is incremented every time library properties, such as name or description, are changed. It is not incremented by changes to a library item within the library, including adding or removing items. It is also not affected by tagging the library. | [optional] 
**publish_info** | [**ContentLibraryPublishInfo**](ContentLibraryPublishInfo.md) |  | [optional] 
**subscription_info** | [**ContentLibrarySubscriptionInfo**](ContentLibrarySubscriptionInfo.md) |  | [optional] 
**server_guid** | **String** | The unique identifier of the vCenter server where the library exists. | [optional] 


