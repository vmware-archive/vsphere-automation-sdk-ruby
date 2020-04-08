# VSphereAutomation::Content::LibrarySubscriptionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](LibrarySubscriptionsApi.md#create) | **POST** /rest/com/vmware/content/library/subscriptions/id:{library} | Creates a subscription of the published library.
[**delete**](LibrarySubscriptionsApi.md#delete) | **POST** /rest/com/vmware/content/library/subscriptions/id:{library}?~action&#x3D;delete | Deletes the specified subscription of the published library. The subscribed library associated with the subscription will not be deleted.
[**get**](LibrarySubscriptionsApi.md#get) | **POST** /rest/com/vmware/content/library/subscriptions/id:{library}?~action&#x3D;get | Returns information about the specified subscription of the published library.
[**list**](LibrarySubscriptionsApi.md#list) | **GET** /rest/com/vmware/content/library/subscriptions | Lists the subscriptions of the published library.
[**update**](LibrarySubscriptionsApi.md#update) | **PATCH** /rest/com/vmware/content/library/subscriptions/id:{library} | Updates the specified subscription of the published library. &lt;p&gt; This is an incremental update to the subscription. Except for the {@link UpdateSpecPlacement} {@term structure}, {@term fields} that are {@term unset} in the update specification will be left unchanged. If {@param.name spec#subscribedLibraryPlacement} is specified, all {@term fields} of the current subscribed library placement will be replaced by this placement.


# **create**
> ContentLibrarySubscriptionsCreateResp create(library, request_body)

Creates a subscription of the published library.

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

api_instance = VSphereAutomation::Content::LibrarySubscriptionsApi.new
library = 'library_example' # String | Identifier of the published library.
request_body = Content::ContentLibrarySubscriptionsCreate.new # ContentLibrarySubscriptionsCreate | 

begin
  #Creates a subscription of the published library.
  result = api_instance.create(library, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibrarySubscriptionsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library** | **String**| Identifier of the published library. | 
 **request_body** | [**ContentLibrarySubscriptionsCreate**](ContentLibrarySubscriptionsCreate.md)|  | 

### Return type

[**ContentLibrarySubscriptionsCreateResp**](ContentLibrarySubscriptionsCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(library, request_body)

Deletes the specified subscription of the published library. The subscribed library associated with the subscription will not be deleted.

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

api_instance = VSphereAutomation::Content::LibrarySubscriptionsApi.new
library = 'library_example' # String | Identifier of the published library.
request_body = Content::ContentLibrarySubscriptionsDelete.new # ContentLibrarySubscriptionsDelete | 

begin
  #Deletes the specified subscription of the published library. The subscribed library associated with the subscription will not be deleted.
  api_instance.delete(library, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibrarySubscriptionsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library** | **String**| Identifier of the published library. | 
 **request_body** | [**ContentLibrarySubscriptionsDelete**](ContentLibrarySubscriptionsDelete.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> ContentLibrarySubscriptionsResp get(library, request_body)

Returns information about the specified subscription of the published library.

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

api_instance = VSphereAutomation::Content::LibrarySubscriptionsApi.new
library = 'library_example' # String | Identifier of the published library.
request_body = Content::ContentLibrarySubscriptionsGet.new # ContentLibrarySubscriptionsGet | 

begin
  #Returns information about the specified subscription of the published library.
  result = api_instance.get(library, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibrarySubscriptionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library** | **String**| Identifier of the published library. | 
 **request_body** | [**ContentLibrarySubscriptionsGet**](ContentLibrarySubscriptionsGet.md)|  | 

### Return type

[**ContentLibrarySubscriptionsResp**](ContentLibrarySubscriptionsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> ContentLibrarySubscriptionsListResp list(library)

Lists the subscriptions of the published library.

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

api_instance = VSphereAutomation::Content::LibrarySubscriptionsApi.new
library = 'library_example' # String | Identifier of the published library.

begin
  #Lists the subscriptions of the published library.
  result = api_instance.list(library)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibrarySubscriptionsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library** | **String**| Identifier of the published library. | 

### Return type

[**ContentLibrarySubscriptionsListResp**](ContentLibrarySubscriptionsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(library, request_body)

Updates the specified subscription of the published library. <p> This is an incremental update to the subscription. Except for the {@link UpdateSpecPlacement} {@term structure}, {@term fields} that are {@term unset} in the update specification will be left unchanged. If {@param.name spec#subscribedLibraryPlacement} is specified, all {@term fields} of the current subscribed library placement will be replaced by this placement.

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

api_instance = VSphereAutomation::Content::LibrarySubscriptionsApi.new
library = 'library_example' # String | Identifier of the published library.
request_body = Content::ContentLibrarySubscriptionsUpdate.new # ContentLibrarySubscriptionsUpdate | 

begin
  #Updates the specified subscription of the published library. <p> This is an incremental update to the subscription. Except for the {@link UpdateSpecPlacement} {@term structure}, {@term fields} that are {@term unset} in the update specification will be left unchanged. If {@param.name spec#subscribedLibraryPlacement} is specified, all {@term fields} of the current subscribed library placement will be replaced by this placement.
  api_instance.update(library, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibrarySubscriptionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library** | **String**| Identifier of the published library. | 
 **request_body** | [**ContentLibrarySubscriptionsUpdate**](ContentLibrarySubscriptionsUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



