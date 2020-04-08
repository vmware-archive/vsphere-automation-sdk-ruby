# VSphereAutomation::Content::LibraryItemChangesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LibraryItemChangesApi.md#get) | **GET** /rest/content/library/item/{library_item}/changes/{version} | Returns information about a library item change.
[**list**](LibraryItemChangesApi.md#list) | **GET** /rest/content/library/item/{library_item}/changes | Returns commonly used information about the content changes made to a library item.


# **get**
> ContentLibraryItemChangesResp get(library_item, version)

Returns information about a library item change.

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

api_instance = VSphereAutomation::Content::LibraryItemChangesApi.new
library_item = 'library_item_example' # String | Library item identifer.
version = 'version_example' # String | Library item version.

begin
  #Returns information about a library item change.
  result = api_instance.get(library_item, version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemChangesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item** | **String**| Library item identifer. | 
 **version** | **String**| Library item version. | 

### Return type

[**ContentLibraryItemChangesResp**](ContentLibraryItemChangesResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ContentLibraryItemChangesListResp list(library_item)

Returns commonly used information about the content changes made to a library item.

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

api_instance = VSphereAutomation::Content::LibraryItemChangesApi.new
library_item = 'library_item_example' # String | Library item identifier.

begin
  #Returns commonly used information about the content changes made to a library item.
  result = api_instance.list(library_item)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemChangesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_item** | **String**| Library item identifier. | 

### Return type

[**ContentLibraryItemChangesListResp**](ContentLibraryItemChangesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



