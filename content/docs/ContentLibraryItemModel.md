# VSphereAutomation::Content::ContentLibraryItemModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for this library item. | [optional] 
**library_id** | **String** | The identifier of the {@link LibraryModel} to which this item belongs. | [optional] 
**content_version** | **String** | The version of the file content list of this library item. | [optional] 
**creation_time** | **DateTime** | The date and time when this library item was created. | [optional] 
**description** | **String** | A human-readable description for this library item. | [optional] 
**last_modified_time** | **DateTime** | The date and time when the metadata for this library item was last changed. &lt;p&gt; This {@term field} is affected by changes to the properties or file content of this item. It is not modified by changes to the tags of the item, or by changes to the library which owns this item. | [optional] 
**last_sync_time** | **DateTime** | The date and time when this library item was last synchronized. &lt;p&gt; This {@term field} is updated every time a synchronization is triggered on the library item, including when a synchronization is triggered on the library to which this item belongs. The value is {@term unset} for a library item that belongs to a local library. | [optional] 
**metadata_version** | **String** | A version number for the metadata of this library item. &lt;p&gt; This value is incremented with each change to the metadata of this item. Changes to name, description, and so on will increment this value. The value is not incremented by changes to the content or tags of the item or the library which owns it. | [optional] 
**name** | **String** | A human-readable name for this library item. &lt;p&gt; The name may not be {@term unset} or an empty string. The name does not have to be unique, even within the same library. | [optional] 
**cached** | **BOOLEAN** | The status that indicates whether the library item is on disk or not. The library item is cached when all its files are on disk. | [optional] 
**size** | **Integer** | The library item size, in bytes. The size is the sum of the size used on the storage backing for all the files in the item. When the library item is not cached, the size is 0. | [optional] 
**type** | **String** | An optional type identifier which indicates the type adapter plugin to use. &lt;p&gt; This {@term field} may be set to a non-empty string value that corresponds to an identifier supported by a type adapter plugin present in the Content Library Service. A type adapter plugin, if present for the specified type, can provide additional information and services around the item content. A type adapter can guide the upload process by creating file entries that are in need of being uploaded to complete an item. &lt;p&gt; The types and plugins supported by the Content Library Service can be queried using the {@link Type} {@term service}. | [optional] 
**version** | **String** | A version number that is updated on metadata changes. This value is used to validate update requests to provide optimistic concurrency of changes. &lt;p&gt; This value represents a number that is incremented every time library item properties, such as name or description, are changed. It is not incremented by changes to the file content of the library item, including adding or removing files. It is also not affected by tagging the library item. | [optional] 
**source_id** | **String** | The identifier of the {@link ItemModel} to which this item is synchronized to if the item belongs to a subscribed library. The value is {@term unset} for a library item that belongs to a local library. | [optional] 


