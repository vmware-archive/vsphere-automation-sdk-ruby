# VSphereAutomation::Content::LibraryItemApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy**](LibraryItemApi.md#copy) | **POST** /rest/com/vmware/content/library/item/id:{source_library_item_id}?~action&#x3D;copy | Copies a library item. &lt;p&gt; Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. &lt;p&gt; If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. &lt;p&gt; A library item cannot be copied into a subscribed library.
[**create**](LibraryItemApi.md#create) | **POST** /rest/com/vmware/content/library/item | Creates a new library item. &lt;p&gt; A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. &lt;p&gt; A library item cannot be created in a subscribed library.
[**delete**](LibraryItemApi.md#delete) | **DELETE** /rest/com/vmware/content/library/item/id:{library_item_id} | Deletes a library item. &lt;p&gt; This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. &lt;p&gt; This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.
[**find**](LibraryItemApi.md#find) | **POST** /rest/com/vmware/content/library/item?~action&#x3D;find | Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
[**get**](LibraryItemApi.md#get) | **GET** /rest/com/vmware/content/library/item/id:{library_item_id} | Returns the {@link ItemModel} with the given identifier.
[**list**](LibraryItemApi.md#list) | **GET** /rest/com/vmware/content/library/item | Returns the identifiers of all items in the given library.
[**publish**](LibraryItemApi.md#publish) | **POST** /rest/com/vmware/content/library/item/id:{library_item_id}?~action&#x3D;publish | Publishes the library item to specified subscriptions of the library. If no subscriptions are specified, then publishes the library item to all subscriptions of the library.
[**update**](LibraryItemApi.md#update) | **PATCH** /rest/com/vmware/content/library/item/id:{library_item_id} | Updates the specified properties of a library item. &lt;p&gt; This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. &lt;p&gt; This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.


# **copy**
> ContentLibraryItemCopyResp copy(source_library_item_id, request_body)

Copies a library item. <p> Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. <p> If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. <p> A library item cannot be copied into a subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::LibraryItemApi.new
source_library_item_id = 'source_library_item_id_example' # String | Identifier of the existing library item from which the content will be copied.
request_body = Content::ContentLibraryItemCopy.new # ContentLibraryItemCopy | 

begin
  #Copies a library item. <p> Copying a library item allows a duplicate to be made within the same or different library. The copy occurs by first creating a new library item, whose identifier is returned. The content of the library item is then copied asynchronously. This copy can be tracked as a task. <p> If the copy fails, Content Library Service will roll back the copy by deleting any content that was already copied, and removing the new library item. A failure during rollback may require manual cleanup by an administrator. <p> A library item cannot be copied into a subscribed library.
  result = api_instance.copy(source_library_item_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->copy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_library_item_id** | **String**| Identifier of the existing library item from which the content will be copied. | 
 **request_body** | [**ContentLibraryItemCopy**](ContentLibraryItemCopy.md)|  | 

### Return type

[**ContentLibraryItemCopyResp**](ContentLibraryItemCopyResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create**
> ContentLibraryItemCreateResp create(request_body)

Creates a new library item. <p> A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. <p> A library item cannot be created in a subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::LibraryItemApi.new
request_body = Content::ContentLibraryItemCreate.new # ContentLibraryItemCreate | 

begin
  #Creates a new library item. <p> A new library item is created without any content. After creation, content can be added through the {@link UpdateSession} and {@link File} {@term services}. <p> A library item cannot be created in a subscribed library.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ContentLibraryItemCreate**](ContentLibraryItemCreate.md)|  | 

### Return type

[**ContentLibraryItemCreateResp**](ContentLibraryItemCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(library_item_id)

Deletes a library item. <p> This {@term operation} will immediately remove the item from the library that owns it. The content of the item will be asynchronously removed from the storage backings. The content deletion can be tracked with a task. In the event that the task fails, an administrator may need to manually remove the files from the storage backing. <p> This {@term operation} cannot be used to delete a library item that is a member of a subscribed library. Removing an item from a subscribed library requires deleting the item from the original published local library and syncing the subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **find**
> ContentLibraryItemFindResp find(request_body)

Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::LibraryItemApi.new
request_body = Content::ContentLibraryItemFind.new # ContentLibraryItemFind | 

begin
  #Returns identifiers of all the visible (as determined by authorization policy) library items matching the requested {@link Item.FindSpec}.
  result = api_instance.find(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ContentLibraryItemFind**](ContentLibraryItemFind.md)|  | 

### Return type

[**ContentLibraryItemFindResp**](ContentLibraryItemFindResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ContentLibraryItemResp get(library_item_id)

Returns the {@link ItemModel} with the given identifier.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[**ContentLibraryItemResp**](ContentLibraryItemResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ContentLibraryItemListResp list(library_id)

Returns the identifiers of all items in the given library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[**ContentLibraryItemListResp**](ContentLibraryItemListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **publish**
> publish(library_item_id, request_body)

Publishes the library item to specified subscriptions of the library. If no subscriptions are specified, then publishes the library item to all subscriptions of the library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::LibraryItemApi.new
library_item_id = 'library_item_id_example' # String | Library item identifier.
request_body = Content::ContentLibraryItemPublish.new # ContentLibraryItemPublish | 

begin
  #Publishes the library item to specified subscriptions of the library. If no subscriptions are specified, then publishes the library item to all subscriptions of the library.
  api_instance.publish(library_item_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->publish: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Library item identifier. | 
 **request_body** | [**ContentLibraryItemPublish**](ContentLibraryItemPublish.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(library_item_id, request_body)

Updates the specified properties of a library item. <p> This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. <p> This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Content::LibraryItemApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item to update.
request_body = Content::ContentLibraryItemUpdate.new # ContentLibraryItemUpdate | 

begin
  #Updates the specified properties of a library item. <p> This is an incremental update to the library item. {@term Fields} that are {@term unset} in the update specification are left unchanged. <p> This {@term operation} cannot update a library item that is a member of a subscribed library. Those items must be updated in the source published library and synchronized to the subscribed library.
  api_instance.update(library_item_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item to update. | 
 **request_body** | [**ContentLibraryItemUpdate**](ContentLibraryItemUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



