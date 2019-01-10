# VSphereAutomation::Content::LibraryItemDownloadsessionFileApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LibraryItemDownloadsessionFileApi.md#get) | **POST** /com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action&#x3D;get | Retrieves file download information for a specific file.
[**list**](LibraryItemDownloadsessionFileApi.md#list) | **GET** /com/vmware/content/library/item/downloadsession/file | Lists the information of all the files in the library item associated with the download session.
[**prepare**](LibraryItemDownloadsessionFileApi.md#prepare) | **POST** /com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action&#x3D;prepare | Requests a file to be prepared for download.


# **get**
> ContentLibraryItemDownloadsessionFileResult get(download_session_id, content_library_item_downloadsession_file_get)

Retrieves file download information for a specific file.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadsessionFileApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session.
content_library_item_downloadsession_file_get = VSphereAutomation::ContentLibraryItemDownloadsessionFileGet.new # ContentLibraryItemDownloadsessionFileGet | 

begin
  #Retrieves file download information for a specific file.
  result = api_instance.get(download_session_id, content_library_item_downloadsession_file_get)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadsessionFileApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session. | 
 **content_library_item_downloadsession_file_get** | [**ContentLibraryItemDownloadsessionFileGet**](ContentLibraryItemDownloadsessionFileGet.md)|  | 

### Return type

[**ContentLibraryItemDownloadsessionFileResult**](ContentLibraryItemDownloadsessionFileResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> ContentLibraryItemDownloadsessionFileListResult list(download_session_id)

Lists the information of all the files in the library item associated with the download session.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadsessionFileApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session.

begin
  #Lists the information of all the files in the library item associated with the download session.
  result = api_instance.list(download_session_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadsessionFileApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session. | 

### Return type

[**ContentLibraryItemDownloadsessionFileListResult**](ContentLibraryItemDownloadsessionFileListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **prepare**
> ContentLibraryItemDownloadsessionFilePrepareResult prepare(download_session_id, content_library_item_downloadsession_file_prepare)

Requests a file to be prepared for download.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadsessionFileApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session.
content_library_item_downloadsession_file_prepare = VSphereAutomation::ContentLibraryItemDownloadsessionFilePrepare.new # ContentLibraryItemDownloadsessionFilePrepare | 

begin
  #Requests a file to be prepared for download.
  result = api_instance.prepare(download_session_id, content_library_item_downloadsession_file_prepare)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadsessionFileApi->prepare: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session. | 
 **content_library_item_downloadsession_file_prepare** | [**ContentLibraryItemDownloadsessionFilePrepare**](ContentLibraryItemDownloadsessionFilePrepare.md)|  | 

### Return type

[**ContentLibraryItemDownloadsessionFilePrepareResult**](ContentLibraryItemDownloadsessionFilePrepareResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



