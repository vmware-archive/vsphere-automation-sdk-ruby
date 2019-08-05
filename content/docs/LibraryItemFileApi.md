# VSphereAutomation::Content::LibraryItemFileApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LibraryItemFileApi.md#get) | **POST** /com/vmware/content/library/item/file/id:{library_item_id} | Retrieves the information for a single file in a library item by its name.
[**list**](LibraryItemFileApi.md#list) | **GET** /com/vmware/content/library/item/file | Lists all of the files that are stored within a given library item.


# **get**
> ContentLibraryItemFileResult get(library_item_id, action, request_body)

Retrieves the information for a single file in a library item by its name.

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

api_instance = VSphereAutomation::Content::LibraryItemFileApi.new
library_item_id = 'library_item_id_example' # String | Identifier of the library item whose file information should be returned.
action = 'action_example' # String | ~action=get
request_body = Content::ContentLibraryItemFileGet.new # ContentLibraryItemFileGet | 

begin
  #Retrieves the information for a single file in a library item by its name.
  result = api_instance.get(library_item_id, action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemFileApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item_id** | **String**| Identifier of the library item whose file information should be returned. | 
 **action** | **String**| ~action&#x3D;get | 
 **request_body** | [**ContentLibraryItemFileGet**](ContentLibraryItemFileGet.md)|  | 

### Return type

[**ContentLibraryItemFileResult**](ContentLibraryItemFileResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ContentLibraryItemFileListResult list(library_item_id)

Lists all of the files that are stored within a given library item.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



