# VSphereAutomation::Content::LibraryApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](LibraryApi.md#find) | **POST** /com/vmware/content/library?~action&#x3D;find | Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.
[**get**](LibraryApi.md#get) | **GET** /com/vmware/content/library/id:{library_id} | Returns a given {@link LibraryModel}.
[**list**](LibraryApi.md#list) | **GET** /com/vmware/content/library | Returns the identifiers of all libraries of any type in the Content Library.
[**update**](LibraryApi.md#update) | **PATCH** /com/vmware/content/library/id:{library_id} | Updates the properties of a library. &lt;p&gt; This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. &lt;p&gt; This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.


# **find**
> ContentLibraryFindResult find(content_library_find)

Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryApi.new
content_library_find = VSphereAutomation::ContentLibraryFind.new # ContentLibraryFind | 

begin
  #Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.
  result = api_instance.find(content_library_find)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_library_find** | [**ContentLibraryFind**](ContentLibraryFind.md)|  | 

### Return type

[**ContentLibraryFindResult**](ContentLibraryFindResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> ContentLibraryResult get(library_id)

Returns a given {@link LibraryModel}.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryApi.new
library_id = 'library_id_example' # String | Identifier of the library to return.

begin
  #Returns a given {@link LibraryModel}.
  result = api_instance.get(library_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the library to return. | 

### Return type

[**ContentLibraryResult**](ContentLibraryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ContentLibraryListResult list

Returns the identifiers of all libraries of any type in the Content Library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryApi.new

begin
  #Returns the identifiers of all libraries of any type in the Content Library.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContentLibraryListResult**](ContentLibraryListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(library_id, content_library_update)

Updates the properties of a library. <p> This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::LibraryApi.new
library_id = 'library_id_example' # String | Identifier of the library to update.
content_library_update = VSphereAutomation::ContentLibraryUpdate.new # ContentLibraryUpdate | 

begin
  #Updates the properties of a library. <p> This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.
  api_instance.update(library_id, content_library_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the library to update. | 
 **content_library_update** | [**ContentLibraryUpdate**](ContentLibraryUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



