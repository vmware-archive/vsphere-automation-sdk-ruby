# VSphereAutomation::Content::LibraryItemFileApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LibraryItemFileApi.md#get) | **POST** /com/vmware/content/library/item/file/id:{library_item_id}?~action&#x3D;get | Retrieves the information for a single file in a library item by its name.
[**list**](LibraryItemFileApi.md#list) | **GET** /com/vmware/content/library/item/file | Lists all of the files that are stored within a given library item.


# **get**
> ContentLibraryItemFileResult get(library_item_id, content_library_item_file_get)

Retrieves the information for a single file in a library item by its name.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemFileApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item whose file information should be returned.
content_library_item_file_get = VSphereAutomation::ContentLibraryItemFileGet.new # ContentLibraryItemFileGet | 

begin
  #Retrieves the information for a single file in a library item by its name.
  result = api_instance.get(library_item_id, content_library_item_file_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemFileApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item whose file information should be returned. | 
 **content_library_item_file_get** | [**ContentLibraryItemFileGet**](ContentLibraryItemFileGet.md)|  | 

### Return type

[**ContentLibraryItemFileResult**](ContentLibraryItemFileResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> ContentLibraryItemFileListResult list(library_item_id)

Lists all of the files that are stored within a given library item.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemFileApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item whose files should be listed.

begin
  #Lists all of the files that are stored within a given library item.
  result = api_instance.list(library_item_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemFileApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item whose files should be listed. | 

### Return type

[**ContentLibraryItemFileListResult**](ContentLibraryItemFileListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



