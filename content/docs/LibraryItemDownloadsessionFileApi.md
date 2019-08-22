# VSphereAutomation::Content::LibraryItemDownloadsessionFileApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LibraryItemDownloadsessionFileApi.md#get) | **POST** /com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action&#x3D;get | Retrieves file download information for a specific file.
[**list**](LibraryItemDownloadsessionFileApi.md#list) | **GET** /com/vmware/content/library/item/downloadsession/file | Lists the information of all the files in the library item associated with the download session.
[**prepare**](LibraryItemDownloadsessionFileApi.md#prepare) | **POST** /com/vmware/content/library/item/downloadsession/file/id:{download_session_id}?~action&#x3D;prepare | Requests a file to be prepared for download.


# **get**
> ContentLibraryItemDownloadsessionFileResult get(download_session_id, request_body)

Retrieves file download information for a specific file.

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

api_instance = VSphereAutomation::Content::LibraryItemDownloadsessionFileApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session.
request_body = Content::ContentLibraryItemDownloadsessionFileGet.new # ContentLibraryItemDownloadsessionFileGet | 

begin
  #Retrieves file download information for a specific file.
  result = api_instance.get(download_session_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadsessionFileApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session. | 
 **request_body** | [**ContentLibraryItemDownloadsessionFileGet**](ContentLibraryItemDownloadsessionFileGet.md)|  | 

### Return type

[**ContentLibraryItemDownloadsessionFileResult**](ContentLibraryItemDownloadsessionFileResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ContentLibraryItemDownloadsessionFileListResult list(download_session_id)

Lists the information of all the files in the library item associated with the download session.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **prepare**
> ContentLibraryItemDownloadsessionFilePrepareResult prepare(download_session_id, request_body)

Requests a file to be prepared for download.

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

api_instance = VSphereAutomation::Content::LibraryItemDownloadsessionFileApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session.
request_body = Content::ContentLibraryItemDownloadsessionFilePrepare.new # ContentLibraryItemDownloadsessionFilePrepare | 

begin
  #Requests a file to be prepared for download.
  result = api_instance.prepare(download_session_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadsessionFileApi->prepare: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session. | 
 **request_body** | [**ContentLibraryItemDownloadsessionFilePrepare**](ContentLibraryItemDownloadsessionFilePrepare.md)|  | 

### Return type

[**ContentLibraryItemDownloadsessionFilePrepareResult**](ContentLibraryItemDownloadsessionFilePrepareResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



