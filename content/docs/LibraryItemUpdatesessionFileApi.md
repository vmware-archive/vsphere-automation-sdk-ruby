# VSphereAutomation::Content::LibraryItemUpdatesessionFileApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](LibraryItemUpdatesessionFileApi.md#add) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;add | Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. &lt;p&gt; When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
[**get**](LibraryItemUpdatesessionFileApi.md#get) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;get | Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
[**list**](LibraryItemUpdatesessionFileApi.md#list) | **GET** /com/vmware/content/library/item/updatesession/file | Lists all files in the library item associated with the update session.
[**remove**](LibraryItemUpdatesessionFileApi.md#remove) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;remove | Requests a file to be removed. The file will only be effectively removed when the update session is completed.
[**validate**](LibraryItemUpdatesessionFileApi.md#validate) | **POST** /com/vmware/content/library/item/updatesession/file/id:{update_session_id}?~action&#x3D;validate | Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.


# **add**
> ContentLibraryItemUpdatesessionFileAddResult add(update_session_id, request_body)

Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. <p> When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdatesessionFileApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session to be modified.
request_body = Content::ContentLibraryItemUpdatesessionFileAdd.new # ContentLibraryItemUpdatesessionFileAdd | 

begin
  #Requests file content to be changed (either created, or updated). Depending on the source type of the file, this {@term operation} will either return an upload endpoint where the client can push the content, or the server will pull from the provided source endpoint. If a file with the same name already exists in this session, this {@term operation} will be used to update the content of the existing file. <p> When importing a file directly from storage, where the source endpoint is a file or datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the library item. If the file is located in the same directory as the library storage backing folder, the server will move the file instead of copying it, thereby allowing instantaneous import of files for efficient backup and restore scenarios. In all other cases, a copy is performed rather than a move.
  result = api_instance.add(update_session_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdatesessionFileApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session to be modified. | 
 **request_body** | [**ContentLibraryItemUpdatesessionFileAdd**](ContentLibraryItemUpdatesessionFileAdd.md)|  | 

### Return type

[**ContentLibraryItemUpdatesessionFileAddResult**](ContentLibraryItemUpdatesessionFileAddResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ContentLibraryItemUpdatesessionFileResult get(update_session_id, request_body)

Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdatesessionFileApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session.
request_body = Content::ContentLibraryItemUpdatesessionFileGet.new # ContentLibraryItemUpdatesessionFileGet | 

begin
  #Retrieves information about a specific file in the snapshot of the library item at the time when the update session was created.
  result = api_instance.get(update_session_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdatesessionFileApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session. | 
 **request_body** | [**ContentLibraryItemUpdatesessionFileGet**](ContentLibraryItemUpdatesessionFileGet.md)|  | 

### Return type

[**ContentLibraryItemUpdatesessionFileResult**](ContentLibraryItemUpdatesessionFileResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ContentLibraryItemUpdatesessionFileListResult list(update_session_id)

Lists all files in the library item associated with the update session.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdatesessionFileApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session.

begin
  #Lists all files in the library item associated with the update session.
  result = api_instance.list(update_session_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdatesessionFileApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session. | 

### Return type

[**ContentLibraryItemUpdatesessionFileListResult**](ContentLibraryItemUpdatesessionFileListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove**
> remove(update_session_id, request_body)

Requests a file to be removed. The file will only be effectively removed when the update session is completed.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdatesessionFileApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session.
request_body = Content::ContentLibraryItemUpdatesessionFileRemove.new # ContentLibraryItemUpdatesessionFileRemove | 

begin
  #Requests a file to be removed. The file will only be effectively removed when the update session is completed.
  api_instance.remove(update_session_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdatesessionFileApi->remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session. | 
 **request_body** | [**ContentLibraryItemUpdatesessionFileRemove**](ContentLibraryItemUpdatesessionFileRemove.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **validate**
> ContentLibraryItemUpdatesessionFileValidateResult validate(update_session_id)

Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.

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

api_instance = VSphereAutomation::Content::LibraryItemUpdatesessionFileApi.new
update_session_id = 'update_session_id_example' # String | Identifier of the update session to validate.

begin
  #Validates the files in the update session with the referenced identifier and ensures all necessary files are received. In the case where a file is missing, this {@term operation} will return its name in the {@link ValidationResult#missingFiles} set. The user can add the missing files and try re-validating. For other type of errors, {@link ValidationResult#invalidFiles} will contain the list of invalid files.
  result = api_instance.validate(update_session_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemUpdatesessionFileApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_session_id** | **String**| Identifier of the update session to validate. | 

### Return type

[**ContentLibraryItemUpdatesessionFileValidateResult**](ContentLibraryItemUpdatesessionFileValidateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



