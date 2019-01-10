# VSphereAutomation::Content::LibraryItemDownloadSessionApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](LibraryItemDownloadSessionApi.md#cancel) | **POST** /com/vmware/content/library/item/download-session/id:{download_session_id}?~action&#x3D;cancel | Cancels the download session. This {@term operation} will abort any ongoing transfers and invalidate transfer urls that the client may be downloading from.
[**create**](LibraryItemDownloadSessionApi.md#create) | **POST** /com/vmware/content/library/item/download-session | Creates a new download session.
[**delete**](LibraryItemDownloadSessionApi.md#delete) | **DELETE** /com/vmware/content/library/item/download-session/id:{download_session_id} | Deletes a download session. This removes the session and all information associated with it. &lt;p&gt; Removing a download session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the transfers will be able to complete). However there will no longer be a means of inspecting the status of those downloads except by seeing the effect on the library item. &lt;p&gt; Download sessions for which there is no download activity or which are complete will automatically be expired and then deleted after a period of time.
[**fail**](LibraryItemDownloadSessionApi.md#fail) | **POST** /com/vmware/content/library/item/download-session/id:{download_session_id}?~action&#x3D;fail | Terminates the download session with a client specified error message. &lt;p&gt; This is useful in transmitting client side failures (for example, not being able to download a file) to the server side.
[**get**](LibraryItemDownloadSessionApi.md#get) | **GET** /com/vmware/content/library/item/download-session/id:{download_session_id} | Gets the download session with the specified identifier, including the most up-to-date status information for the session.
[**keep_alive**](LibraryItemDownloadSessionApi.md#keep_alive) | **POST** /com/vmware/content/library/item/download-session/id:{download_session_id}?~action&#x3D;keep-alive | Keeps a download session alive. This operation is allowed only if the session is in the {@link DownloadSessionModel.State#ACTIVE} state. &lt;p&gt; If there is no activity for a download session for a certain period of time, the download session will expire. The download session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of an active download session.
[**list**](LibraryItemDownloadSessionApi.md#list) | **GET** /com/vmware/content/library/item/download-session | Lists the identifiers of the download sessions created by the calling user. Optionally may filter by library item.


# **cancel**
> cancel(download_session_id)

Cancels the download session. This {@term operation} will abort any ongoing transfers and invalidate transfer urls that the client may be downloading from.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadSessionApi.new
download_session_id = 'download_session_id_example' # String | Identifer of the download session that should be canceled.

begin
  #Cancels the download session. This {@term operation} will abort any ongoing transfers and invalidate transfer urls that the client may be downloading from.
  api_instance.cancel(download_session_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadSessionApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifer of the download session that should be canceled. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **create**
> ContentLibraryItemDownloadSessionCreateResult create(content_library_item_download_session_create)

Creates a new download session.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadSessionApi.new
content_library_item_download_session_create = VSphereAutomation::ContentLibraryItemDownloadSessionCreate.new # ContentLibraryItemDownloadSessionCreate | 

begin
  #Creates a new download session.
  result = api_instance.create(content_library_item_download_session_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadSessionApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_library_item_download_session_create** | [**ContentLibraryItemDownloadSessionCreate**](ContentLibraryItemDownloadSessionCreate.md)|  | 

### Return type

[**ContentLibraryItemDownloadSessionCreateResult**](ContentLibraryItemDownloadSessionCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(download_session_id)

Deletes a download session. This removes the session and all information associated with it. <p> Removing a download session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the transfers will be able to complete). However there will no longer be a means of inspecting the status of those downloads except by seeing the effect on the library item. <p> Download sessions for which there is no download activity or which are complete will automatically be expired and then deleted after a period of time.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadSessionApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session to be deleted.

begin
  #Deletes a download session. This removes the session and all information associated with it. <p> Removing a download session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the transfers will be able to complete). However there will no longer be a means of inspecting the status of those downloads except by seeing the effect on the library item. <p> Download sessions for which there is no download activity or which are complete will automatically be expired and then deleted after a period of time.
  api_instance.delete(download_session_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadSessionApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session to be deleted. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **fail**
> fail(download_session_id, content_library_item_download_session_fail)

Terminates the download session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to download a file) to the server side.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadSessionApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session to fail.
content_library_item_download_session_fail = VSphereAutomation::ContentLibraryItemDownloadSessionFail.new # ContentLibraryItemDownloadSessionFail | 

begin
  #Terminates the download session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to download a file) to the server side.
  api_instance.fail(download_session_id, content_library_item_download_session_fail)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadSessionApi->fail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session to fail. | 
 **content_library_item_download_session_fail** | [**ContentLibraryItemDownloadSessionFail**](ContentLibraryItemDownloadSessionFail.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> ContentLibraryItemDownloadSessionResult get(download_session_id)

Gets the download session with the specified identifier, including the most up-to-date status information for the session.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadSessionApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session to retrieve.

begin
  #Gets the download session with the specified identifier, including the most up-to-date status information for the session.
  result = api_instance.get(download_session_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadSessionApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session to retrieve. | 

### Return type

[**ContentLibraryItemDownloadSessionResult**](ContentLibraryItemDownloadSessionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **keep_alive**
> keep_alive(download_session_id, opts)

Keeps a download session alive. This operation is allowed only if the session is in the {@link DownloadSessionModel.State#ACTIVE} state. <p> If there is no activity for a download session for a certain period of time, the download session will expire. The download session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of an active download session.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadSessionApi.new
download_session_id = 'download_session_id_example' # String | Identifier of the download session whose lifetime should be extended.
opts = {
  content_library_item_download_session_keep_alive: VSphereAutomation::ContentLibraryItemDownloadSessionKeepAlive.new # ContentLibraryItemDownloadSessionKeepAlive | 
}

begin
  #Keeps a download session alive. This operation is allowed only if the session is in the {@link DownloadSessionModel.State#ACTIVE} state. <p> If there is no activity for a download session for a certain period of time, the download session will expire. The download session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of an active download session.
  api_instance.keep_alive(download_session_id, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadSessionApi->keep_alive: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_session_id** | **String**| Identifier of the download session whose lifetime should be extended. | 
 **content_library_item_download_session_keep_alive** | [**ContentLibraryItemDownloadSessionKeepAlive**](ContentLibraryItemDownloadSessionKeepAlive.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **list**
> ContentLibraryItemDownloadSessionListResult list(opts)

Lists the identifiers of the download sessions created by the calling user. Optionally may filter by library item.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryItemDownloadSessionApi.new
opts = {
  library_item_id: 'library_item_id_example' # String | Library item identifier on which to filter results.
}

begin
  #Lists the identifiers of the download sessions created by the calling user. Optionally may filter by library item.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemDownloadSessionApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Library item identifier on which to filter results. | [optional] 

### Return type

[**ContentLibraryItemDownloadSessionListResult**](ContentLibraryItemDownloadSessionListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



