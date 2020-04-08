# VSphereAutomation::Content::SubscribedLibraryApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SubscribedLibraryApi.md#create) | **POST** /rest/com/vmware/content/subscribed-library | Creates a new subscribed library. &lt;p&gt; Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
[**delete**](SubscribedLibraryApi.md#delete) | **DELETE** /rest/com/vmware/content/subscribed-library/id:{library_id} | Deletes the specified subscribed library. &lt;p&gt; Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
[**evict**](SubscribedLibraryApi.md#evict) | **POST** /rest/com/vmware/content/subscribed-library/id:{library_id}?~action&#x3D;evict | Evicts the cached content of an on-demand subscribed library. &lt;p&gt; This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.
[**get**](SubscribedLibraryApi.md#get) | **GET** /rest/com/vmware/content/subscribed-library/id:{library_id} | Returns a given subscribed library.
[**list**](SubscribedLibraryApi.md#list) | **GET** /rest/com/vmware/content/subscribed-library | Returns the identifiers of all subscribed libraries in the Content Library.
[**probe**](SubscribedLibraryApi.md#probe) | **POST** /rest/com/vmware/content/subscribed-library?~action&#x3D;probe | Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.
[**sync**](SubscribedLibraryApi.md#sync) | **POST** /rest/com/vmware/content/subscribed-library/id:{library_id}?~action&#x3D;sync | Forces the synchronization of the subscribed library. &lt;p&gt; Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.
[**update**](SubscribedLibraryApi.md#update) | **PATCH** /rest/com/vmware/content/subscribed-library/id:{library_id} | Updates the properties of a subscribed library. &lt;p&gt; This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.


# **create**
> ContentSubscribedLibraryCreateResp create(request_body)

Creates a new subscribed library. <p> Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
request_body = Content::ContentSubscribedLibraryCreate.new # ContentSubscribedLibraryCreate | 

begin
  #Creates a new subscribed library. <p> Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ContentSubscribedLibraryCreate**](ContentSubscribedLibraryCreate.md)|  | 

### Return type

[**ContentSubscribedLibraryCreateResp**](ContentSubscribedLibraryCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(library_id)

Deletes the specified subscribed library. <p> Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the subscribed library to delete.

begin
  #Deletes the specified subscribed library. <p> Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
  api_instance.delete(library_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the subscribed library to delete. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **evict**
> evict(library_id)

Evicts the cached content of an on-demand subscribed library. <p> This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the subscribed library whose content should be evicted.

begin
  #Evicts the cached content of an on-demand subscribed library. <p> This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.
  api_instance.evict(library_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->evict: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the subscribed library whose content should be evicted. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ContentSubscribedLibraryResp get(library_id)

Returns a given subscribed library.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the subscribed library to return.

begin
  #Returns a given subscribed library.
  result = api_instance.get(library_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the subscribed library to return. | 

### Return type

[**ContentSubscribedLibraryResp**](ContentSubscribedLibraryResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> ContentSubscribedLibraryListResp list

Returns the identifiers of all subscribed libraries in the Content Library.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new

begin
  #Returns the identifiers of all subscribed libraries in the Content Library.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContentSubscribedLibraryListResp**](ContentSubscribedLibraryListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **probe**
> ContentSubscribedLibraryProbeResp probe(request_body)

Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
request_body = Content::ContentSubscribedLibraryProbe.new # ContentSubscribedLibraryProbe | 

begin
  #Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.
  result = api_instance.probe(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->probe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ContentSubscribedLibraryProbe**](ContentSubscribedLibraryProbe.md)|  | 

### Return type

[**ContentSubscribedLibraryProbeResp**](ContentSubscribedLibraryProbeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sync**
> sync(library_id)

Forces the synchronization of the subscribed library. <p> Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the subscribed library to synchronize.

begin
  #Forces the synchronization of the subscribed library. <p> Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.
  api_instance.sync(library_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->sync: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the subscribed library to synchronize. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(library_id, request_body)

Updates the properties of a subscribed library. <p> This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.

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

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the subscribed library to update.
request_body = Content::ContentSubscribedLibraryUpdate.new # ContentSubscribedLibraryUpdate | 

begin
  #Updates the properties of a subscribed library. <p> This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
  api_instance.update(library_id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the subscribed library to update. | 
 **request_body** | [**ContentSubscribedLibraryUpdate**](ContentSubscribedLibraryUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



