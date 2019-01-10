# VSphereAutomation::Content::LibrarySubscribedItemApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**evict**](LibrarySubscribedItemApi.md#evict) | **POST** /com/vmware/content/library/subscribed-item/id:{library_item_id}?~action&#x3D;evict | Evicts the cached content of a library item in a subscribed library. &lt;p&gt; This {@term operation} allows the cached content of a library item to be removed to free up storage capacity. This {@term operation} will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set {@link ItemModel#cached} to false.
[**sync**](LibrarySubscribedItemApi.md#sync) | **POST** /com/vmware/content/library/subscribed-item/id:{library_item_id}?~action&#x3D;sync | Forces the synchronization of an individual library item in a subscribed library. &lt;p&gt; Synchronizing an individual item will update that item&#39;s metadata from the remote source. If the source library item on the remote library has been deleted, this {@term operation} will delete the library item from the subscribed library as well. &lt;p&gt; The default behavior of the synchronization is determined by the {@link SubscriptionInfo} of the library which owns the library item. &lt;ul&gt; &lt;li&gt;If {@link SubscriptionInfo#onDemand} is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the {@param.name forceSyncContent} {@term parameter}.&lt;/li&gt; &lt;li&gt;If {@link SubscriptionInfo#onDemand} is false, then this call will always synchronize the file content. The {@param.name forceSyncContent} {@term parameter} is ignored when the subscription is not on-demand.&lt;/li&gt; &lt;/ul&gt; When the file content has been synchronized, the {@link ItemModel#cached} {@term field} will be true. &lt;p&gt; This {@term operation} will return immediately and create an asynchronous task to perform the synchronization.


# **evict**
> evict(library_item_id)

Evicts the cached content of a library item in a subscribed library. <p> This {@term operation} allows the cached content of a library item to be removed to free up storage capacity. This {@term operation} will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set {@link ItemModel#cached} to false.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibrarySubscribedItemApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item whose content should be evicted.

begin
  #Evicts the cached content of a library item in a subscribed library. <p> This {@term operation} allows the cached content of a library item to be removed to free up storage capacity. This {@term operation} will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set {@link ItemModel#cached} to false.
  api_instance.evict(library_item_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibrarySubscribedItemApi->evict: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item whose content should be evicted. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **sync**
> sync(library_item_id, content_library_subscribed_item_sync)

Forces the synchronization of an individual library item in a subscribed library. <p> Synchronizing an individual item will update that item's metadata from the remote source. If the source library item on the remote library has been deleted, this {@term operation} will delete the library item from the subscribed library as well. <p> The default behavior of the synchronization is determined by the {@link SubscriptionInfo} of the library which owns the library item. <ul> <li>If {@link SubscriptionInfo#onDemand} is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the {@param.name forceSyncContent} {@term parameter}.</li> <li>If {@link SubscriptionInfo#onDemand} is false, then this call will always synchronize the file content. The {@param.name forceSyncContent} {@term parameter} is ignored when the subscription is not on-demand.</li> </ul> When the file content has been synchronized, the {@link ItemModel#cached} {@term field} will be true. <p> This {@term operation} will return immediately and create an asynchronous task to perform the synchronization.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibrarySubscribedItemApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item to synchronize.
content_library_subscribed_item_sync = VSphereAutomation::ContentLibrarySubscribedItemSync.new # ContentLibrarySubscribedItemSync | 

begin
  #Forces the synchronization of an individual library item in a subscribed library. <p> Synchronizing an individual item will update that item's metadata from the remote source. If the source library item on the remote library has been deleted, this {@term operation} will delete the library item from the subscribed library as well. <p> The default behavior of the synchronization is determined by the {@link SubscriptionInfo} of the library which owns the library item. <ul> <li>If {@link SubscriptionInfo#onDemand} is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the {@param.name forceSyncContent} {@term parameter}.</li> <li>If {@link SubscriptionInfo#onDemand} is false, then this call will always synchronize the file content. The {@param.name forceSyncContent} {@term parameter} is ignored when the subscription is not on-demand.</li> </ul> When the file content has been synchronized, the {@link ItemModel#cached} {@term field} will be true. <p> This {@term operation} will return immediately and create an asynchronous task to perform the synchronization.
  api_instance.sync(library_item_id, content_library_subscribed_item_sync)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibrarySubscribedItemApi->sync: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item to synchronize. | 
 **content_library_subscribed_item_sync** | [**ContentLibrarySubscribedItemSync**](ContentLibrarySubscribedItemSync.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



