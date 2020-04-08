# VSphereAutomation::Content::LibraryItemStorageApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LibraryItemStorageApi.md#get) | **POST** /rest/com/vmware/content/library/item/storage/id:{library_item_id}?~action&#x3D;get | Retrieves the storage information for a specific file in a library item.
[**list**](LibraryItemStorageApi.md#list) | **GET** /rest/com/vmware/content/library/item/storage | Lists all storage items for a given library item.


# **get**
> ContentLibraryItemStorageResp get(library_item_id, request_body)

Retrieves the storage information for a specific file in a library item.

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

api_instance = VSphereAutomation::Content::LibraryItemStorageApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item whose storage information should be retrieved.
request_body = Content::ContentLibraryItemStorageGet.new # ContentLibraryItemStorageGet | 

begin
  #Retrieves the storage information for a specific file in a library item.
  result = api_instance.get(library_item_id, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemStorageApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item whose storage information should be retrieved. | 
 **request_body** | [**ContentLibraryItemStorageGet**](ContentLibraryItemStorageGet.md)|  | 

### Return type

[**ContentLibraryItemStorageResp**](ContentLibraryItemStorageResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ContentLibraryItemStorageListResp list(library_item_id)

Lists all storage items for a given library item.

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

[**ContentLibraryItemStorageListResp**](ContentLibraryItemStorageListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



