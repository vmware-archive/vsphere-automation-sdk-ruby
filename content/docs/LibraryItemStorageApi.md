# VSphereAutomation::Content::LibraryItemStorageApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LibraryItemStorageApi.md#get) | **POST** /com/vmware/content/library/item/storage/id:{library_item_id}?~action&#x3D;get | Retrieves the storage information for a specific file in a library item.
[**list**](LibraryItemStorageApi.md#list) | **GET** /com/vmware/content/library/item/storage | Lists all storage items for a given library item.


# **get**
> ContentLibraryItemStorageResult get(library_item_id, content_library_item_storage_get)

Retrieves the storage information for a specific file in a library item.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemStorageApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item whose storage information should be retrieved.
content_library_item_storage_get = VSphereAutomation::ContentLibraryItemStorageGet.new # ContentLibraryItemStorageGet | 

begin
  #Retrieves the storage information for a specific file in a library item.
  result = api_instance.get(library_item_id, content_library_item_storage_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemStorageApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item whose storage information should be retrieved. | 
 **content_library_item_storage_get** | [**ContentLibraryItemStorageGet**](ContentLibraryItemStorageGet.md)|  | 

### Return type

[**ContentLibraryItemStorageResult**](ContentLibraryItemStorageResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> ContentLibraryItemStorageListResult list(library_item_id)

Lists all storage items for a given library item.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemStorageApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item whose storage information should be listed.

begin
  #Lists all storage items for a given library item.
  result = api_instance.list(library_item_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemStorageApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item whose storage information should be listed. | 

### Return type

[**ContentLibraryItemStorageListResult**](ContentLibraryItemStorageListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



