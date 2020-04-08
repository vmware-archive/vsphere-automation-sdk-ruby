# VSphereAutomation::Content::LibraryItemUpdateSessionApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](LibraryItemUpdateSessionApi.md#cancel) | **POST** /rest/com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;cancel | Cancels the update session and sets its state to {@link UpdateSessionModel.State#CANCELED}. This {@term operation} will free up any temporary resources currently associated with the session. &lt;p&gt; This {@term operation} is not allowed if the session has been already completed. &lt;p&gt; Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.
[**complete**](LibraryItemUpdateSessionApi.md#complete) | **POST** /rest/com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;complete | Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done. &lt;p&gt; This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state. &lt;p&gt; Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the {@link content.library.item.updatesession.File#validate} {@term operation}. &lt;p&gt; Modifications are not visible to other clients unless the session is completed and all necessary files have been received.
[**create**](LibraryItemUpdateSessionApi.md#create) | **POST** /rest/com/vmware/content/library/item/update-session | Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received. &lt;p&gt; Content Library Service allows only one single update session to be active for a specific library item.
[**delete**](LibraryItemUpdateSessionApi.md#delete) | **DELETE** /rest/com/vmware/content/library/item/update-session/id:{update_session_id} | Deletes an update session. This removes the session and all information associated with it. &lt;p&gt; Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item. &lt;p&gt; Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.
[**fail**](LibraryItemUpdateSessionApi.md#fail) | **POST** /rest/com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;fail | Terminates the update session with a client specified error message. &lt;p&gt; This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.
[**get**](LibraryItemUpdateSessionApi.md#get) | **GET** /rest/com/vmware/content/library/item/update-session/id:{update_session_id} | Gets the update session with the specified identifier, including the most up-to-date status information for the session.
[**keep_alive**](LibraryItemUpdateSessionApi.md#keep_alive) | **POST** /rest/com/vmware/content/library/item/update-session/id:{update_session_id}?~action&#x3D;keep-alive | Keeps an update session alive. &lt;p&gt; If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of the update session.
[**list**](LibraryItemUpdateSessionApi.md#list) | **GET** /rest/com/vmware/content/library/item/update-session | Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.
[**update**](LibraryItemUpdateSessionApi.md#update) | **PATCH** /rest/com/vmware/content/library/item/update-session/id:{update_session_id} | Updates the properties of an update session. &lt;p&gt; This is an incremental update to the update session. Any {@term field} in the {@link UpdateSessionModel} {@term structure} that is {@term unset} will not be modified. &lt;p&gt; This {@term operation} will only update the property {@link UpdateSessionModel#warningBehavior} of the update session. This will not, for example, update the {@link UpdateSessionModel#libraryItemId} or {@link UpdateSessionModel#state} of an update session. &lt;p&gt; This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state.


# **cancel**
> cancel(update_session_id)

Cancels the update session and sets its state to {@link UpdateSessionModel.State#CANCELED}. This {@term operation} will free up any temporary resources currently associated with the session. <p> This {@term operation} is not allowed if the session has been already completed. <p> Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session that should be canceled.

begin
  #Cancels the update session and sets its state to {@link UpdateSessionModel.State#CANCELED}. This {@term operation} will free up any temporary resources currently associated with the session. <p> This {@term operation} is not allowed if the session has been already completed. <p> Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.
  api_instance.cancel(update_session_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session that should be canceled. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **complete**
> complete(update_session_id)

Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state. <p> Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the {@link content.library.item.updatesession.File#validate} {@term operation}. <p> Modifications are not visible to other clients unless the session is completed and all necessary files have been received.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session that should be completed.

begin
  #Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state. <p> Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the {@link content.library.item.updatesession.File#validate} {@term operation}. <p> Modifications are not visible to other clients unless the session is completed and all necessary files have been received.
  api_instance.complete(update_session_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->complete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session that should be completed. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> ContentLibraryItemUpdateSessionCreateResp create(request_body)

Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received. <p> Content Library Service allows only one single update session to be active for a specific library item.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
request_body = Content::ContentLibraryItemUpdateSessionCreate.new # ContentLibraryItemUpdateSessionCreate | 

begin
  #Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received. <p> Content Library Service allows only one single update session to be active for a specific library item.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ContentLibraryItemUpdateSessionCreate**](ContentLibraryItemUpdateSessionCreate.md)|  | 

### Return type

[**ContentLibraryItemUpdateSessionCreateResp**](ContentLibraryItemUpdateSessionCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(update_session_id)

Deletes an update session. This removes the session and all information associated with it. <p> Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item. <p> Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
update_session_id = 'update_session_id_example' # String | Identifer of the update session to delete.

begin
  #Deletes an update session. This removes the session and all information associated with it. <p> Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item. <p> Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.
  api_instance.delete(update_session_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifer of the update session to delete. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fail**
> fail(update_session_id, request_body)

Terminates the update session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session to fail.
request_body = Content::ContentLibraryItemUpdateSessionFail.new # ContentLibraryItemUpdateSessionFail | 

begin
  #Terminates the update session with a client specified error message. <p> This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.
  api_instance.fail(update_session_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->fail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session to fail. | 
 **request_body** | [**ContentLibraryItemUpdateSessionFail**](ContentLibraryItemUpdateSessionFail.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ContentLibraryItemUpdateSessionResp get(update_session_id)

Gets the update session with the specified identifier, including the most up-to-date status information for the session.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session to retrieve.

begin
  #Gets the update session with the specified identifier, including the most up-to-date status information for the session.
  result = api_instance.get(update_session_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session to retrieve. | 

### Return type

[**ContentLibraryItemUpdateSessionResp**](ContentLibraryItemUpdateSessionResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **keep_alive**
> keep_alive(update_session_id, opts)

Keeps an update session alive. <p> If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of the update session.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session whose lifetime should be extended.
opts = {
  request_body: Content::ContentLibraryItemUpdateSessionKeepAlive.new # ContentLibraryItemUpdateSessionKeepAlive | 
}

begin
  #Keeps an update session alive. <p> If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of the update session.
  api_instance.keep_alive(update_session_id, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->keep_alive: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session whose lifetime should be extended. | 
 **request_body** | [**ContentLibraryItemUpdateSessionKeepAlive**](ContentLibraryItemUpdateSessionKeepAlive.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ContentLibraryItemUpdateSessionListResp list(opts)

Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
opts = {
  library_item_id: 'library_item_id_example' # String | Optional library item identifier on which to filter results.
}

begin
  #Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Optional library item identifier on which to filter results. | [optional] 

### Return type

[**ContentLibraryItemUpdateSessionListResp**](ContentLibraryItemUpdateSessionListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(update_session_id, request_body)

Updates the properties of an update session. <p> This is an incremental update to the update session. Any {@term field} in the {@link UpdateSessionModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the property {@link UpdateSessionModel#warningBehavior} of the update session. This will not, for example, update the {@link UpdateSessionModel#libraryItemId} or {@link UpdateSessionModel#state} of an update session. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
update_session_id = 'update_session_id_example' # String | Identifer of the update session that should be updated.
request_body = Content::ContentLibraryItemUpdateSessionUpdate.new # ContentLibraryItemUpdateSessionUpdate | 

begin
  #Updates the properties of an update session. <p> This is an incremental update to the update session. Any {@term field} in the {@link UpdateSessionModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the property {@link UpdateSessionModel#warningBehavior} of the update session. This will not, for example, update the {@link UpdateSessionModel#libraryItemId} or {@link UpdateSessionModel#state} of an update session. <p> This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state.
  api_instance.update(update_session_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdateSessionApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifer of the update session that should be updated. | 
 **request_body** | [**ContentLibraryItemUpdateSessionUpdate**](ContentLibraryItemUpdateSessionUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



