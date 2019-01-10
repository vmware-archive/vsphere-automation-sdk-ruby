# VSphereAutomation::Content::LibraryItemApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy**](LibraryItemApi.md#copy) | **POST** /com/vmware/content/library/item/id:{source_library_item_id}?~action&#x3D;copy | Copies a library item. &lt;p&gt; Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. &lt;p&gt; If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. &lt;p&gt; A library item cannot be copied into a subscribed library.
[**create**](LibraryItemApi.md#create) | **POST** /com/vmware/content/library/item | Creates a new library item. &lt;p&gt; A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. &lt;p&gt; A library item cannot be created in a subscribed library.
[**delete**](LibraryItemApi.md#delete) | **DELETE** /com/vmware/content/library/item/id:{library_item_id} | Deletes a library item. &lt;p&gt; This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. &lt;p&gt; This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
[**find**](LibraryItemApi.md#find) | **POST** /com/vmware/content/library/item?~action&#x3D;find | Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
[**get**](LibraryItemApi.md#get) | **GET** /com/vmware/content/library/item/id:{library_item_id} | Returns the {@link ItemModel} with the given identifier.
[**list**](LibraryItemApi.md#list) | **GET** /com/vmware/content/library/item | Returns the identifiers of all items in the given library.
[**update**](LibraryItemApi.md#update) | **PATCH** /com/vmware/content/library/item/id:{library_item_id} | Updates the specified properties of a library item. &lt;p&gt; This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. &lt;p&gt; This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.


# **copy**
> ContentLibraryItemCopyResult copy(source_library_item_id, content_library_item_copy)

Copies a library item. <p> Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. <p> If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. <p> A library item cannot be copied into a subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemApi.new
source_library_item_id = 'source_library_item_id_example' # String | Identifier of the existing library item from which the content will be copied.
content_library_item_copy = VSphereAutomation::ContentLibraryItemCopy.new # ContentLibraryItemCopy | 

begin
  #Copies a library item. <p> Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. <p> If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. <p> A library item cannot be copied into a subscribed library.
  result = api_instance.copy(source_library_item_id, content_library_item_copy)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->copy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_library_item_id** | **String**| Identifier of the existing library item from which the content will be copied. | 
 **content_library_item_copy** | [**ContentLibraryItemCopy**](ContentLibraryItemCopy.md)|  | 

### Return type

[**ContentLibraryItemCopyResult**](ContentLibraryItemCopyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **create**
> ContentLibraryItemCreateResult create(content_library_item_create)

Creates a new library item. <p> A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. <p> A library item cannot be created in a subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemApi.new
content_library_item_create = VSphereAutomation::ContentLibraryItemCreate.new # ContentLibraryItemCreate | 

begin
  #Creates a new library item. <p> A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. <p> A library item cannot be created in a subscribed library.
  result = api_instance.create(content_library_item_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_library_item_create** | [**ContentLibraryItemCreate**](ContentLibraryItemCreate.md)|  | 

### Return type

[**ContentLibraryItemCreateResult**](ContentLibraryItemCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(library_item_id)

Deletes a library item. <p> This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. <p> This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item to delete.

begin
  #Deletes a library item. <p> This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. <p> This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
  api_instance.delete(library_item_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **find**
> ContentLibraryItemFindResult find(content_library_item_find)

Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemApi.new
content_library_item_find = VSphereAutomation::ContentLibraryItemFind.new # ContentLibraryItemFind | 

begin
  #Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
  result = api_instance.find(content_library_item_find)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_library_item_find** | [**ContentLibraryItemFind**](ContentLibraryItemFind.md)|  | 

### Return type

[**ContentLibraryItemFindResult**](ContentLibraryItemFindResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> ContentLibraryItemResult get(library_item_id)

Returns the {@link ItemModel} with the given identifier.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item to return.

begin
  #Returns the {@link ItemModel} with the given identifier.
  result = api_instance.get(library_item_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item to return. | 

### Return type

[**ContentLibraryItemResult**](ContentLibraryItemResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ContentLibraryItemListResult list(library_id)

Returns the identifiers of all items in the given library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemApi.new
library_id = 'library_id_example' # String | Identifier of the library whose items should be returned.

begin
  #Returns the identifiers of all items in the given library.
  result = api_instance.list(library_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the library whose items should be returned. | 

### Return type

[**ContentLibraryItemListResult**](ContentLibraryItemListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(library_item_id, content_library_item_update)

Updates the specified properties of a library item. <p> This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. <p> This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item to update.
content_library_item_update = VSphereAutomation::ContentLibraryItemUpdate.new # ContentLibraryItemUpdate | 

begin
  #Updates the specified properties of a library item. <p> This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. <p> This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.
  api_instance.update(library_item_id, content_library_item_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item to update. | 
 **content_library_item_update** | [**ContentLibraryItemUpdate**](ContentLibraryItemUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



