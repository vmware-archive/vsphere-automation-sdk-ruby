# VSphereAutomation::Content::LocalLibraryApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](LocalLibraryApi.md#create) | **POST** /com/vmware/content/local-library | Creates a new local library.
[**delete**](LocalLibraryApi.md#delete) | **DELETE** /com/vmware/content/local-library/id:{library_id} | Deletes the specified local library. &lt;p&gt; Deleting a local library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
[**get**](LocalLibraryApi.md#get) | **GET** /com/vmware/content/local-library/id:{library_id} | Returns a given local library.
[**list**](LocalLibraryApi.md#list) | **GET** /com/vmware/content/local-library | Returns the identifiers of all local libraries in the Content Library.
[**update**](LocalLibraryApi.md#update) | **PATCH** /com/vmware/content/local-library/id:{library_id} | Updates the properties of a local library. &lt;p&gt; This is an incremental update to the local library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.


# **create**
> ContentLocalLibraryCreateResult create(content_local_library_create)

Creates a new local library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LocalLibraryApi.new
content_local_library_create = VSphereAutomation::ContentLocalLibraryCreate.new # ContentLocalLibraryCreate | 

begin
  #Creates a new local library.
  result = api_instance.create(content_local_library_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalLibraryApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_local_library_create** | [**ContentLocalLibraryCreate**](ContentLocalLibraryCreate.md)|  | 

### Return type

[**ContentLocalLibraryCreateResult**](ContentLocalLibraryCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(library_id)

Deletes the specified local library. <p> Deleting a local library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LocalLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the local library to delete.

begin
  #Deletes the specified local library. <p> Deleting a local library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
  api_instance.delete(library_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalLibraryApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the local library to delete. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> ContentLocalLibraryResult get(library_id)

Returns a given local library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LocalLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the local library to return.

begin
  #Returns a given local library.
  result = api_instance.get(library_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalLibraryApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the local library to return. | 

### Return type

[**ContentLocalLibraryResult**](ContentLocalLibraryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ContentLocalLibraryListResult list

Returns the identifiers of all local libraries in the Content Library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LocalLibraryApi.new

begin
  #Returns the identifiers of all local libraries in the Content Library.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalLibraryApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContentLocalLibraryListResult**](ContentLocalLibraryListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(library_id, content_local_library_update)

Updates the properties of a local library. <p> This is an incremental update to the local library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LocalLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the local library to update.
content_local_library_update = VSphereAutomation::ContentLocalLibraryUpdate.new # ContentLocalLibraryUpdate | 

begin
  #Updates the properties of a local library. <p> This is an incremental update to the local library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
  api_instance.update(library_id, content_local_library_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalLibraryApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the local library to update. | 
 **content_local_library_update** | [**ContentLocalLibraryUpdate**](ContentLocalLibraryUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



