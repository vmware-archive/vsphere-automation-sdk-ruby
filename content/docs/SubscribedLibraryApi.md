# VSphereAutomation::Content::SubscribedLibraryApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SubscribedLibraryApi.md#create) | **POST** /com/vmware/content/subscribed-library | Creates a new subscribed library. &lt;p&gt; Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
[**delete**](SubscribedLibraryApi.md#delete) | **DELETE** /com/vmware/content/subscribed-library/id:{library_id} | Deletes the specified subscribed library. &lt;p&gt; Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.
[**evict**](SubscribedLibraryApi.md#evict) | **POST** /com/vmware/content/subscribed-library/id:{library_id}?~action&#x3D;evict | Evicts the cached content of an on-demand subscribed library. &lt;p&gt; This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.
[**get**](SubscribedLibraryApi.md#get) | **GET** /com/vmware/content/subscribed-library/id:{library_id} | Returns a given subscribed library.
[**list**](SubscribedLibraryApi.md#list) | **GET** /com/vmware/content/subscribed-library | Returns the identifiers of all subscribed libraries in the Content Library.
[**probe**](SubscribedLibraryApi.md#probe) | **POST** /com/vmware/content/subscribed-library?~action&#x3D;probe | Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.
[**sync**](SubscribedLibraryApi.md#sync) | **POST** /com/vmware/content/subscribed-library/id:{library_id}?~action&#x3D;sync | Forces the synchronization of the subscribed library. &lt;p&gt; Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.
[**update**](SubscribedLibraryApi.md#update) | **PATCH** /com/vmware/content/subscribed-library/id:{library_id} | Updates the properties of a subscribed library. &lt;p&gt; This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.


# **create**
> ContentSubscribedLibraryCreateResult create(content_subscribed_library_create)

Creates a new subscribed library. <p> Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
content_subscribed_library_create = VSphereAutomation::ContentSubscribedLibraryCreate.new # ContentSubscribedLibraryCreate | 

begin
  #Creates a new subscribed library. <p> Once created, the subscribed library will be empty. If the {@link LibraryModel#subscriptionInfo} property is set, the Content Library Service will attempt to synchronize to the remote source. This is an asynchronous operation so the content of the published library may not immediately appear.
  result = api_instance.create(content_subscribed_library_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_subscribed_library_create** | [**ContentSubscribedLibraryCreate**](ContentSubscribedLibraryCreate.md)|  | 

### Return type

[**ContentSubscribedLibraryCreateResult**](ContentSubscribedLibraryCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(library_id)

Deletes the specified subscribed library. <p> Deleting a subscribed library will remove the entry immediately and begin an asynchronous task to remove all cached content for the library. If the asynchronous task fails, file content may remain on the storage backing. This content will require manual removal.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **evict**
> evict(library_id)

Evicts the cached content of an on-demand subscribed library. <p> This {@term operation} allows the cached content of a subscribed library to be removed to free up storage capacity. This {@term operation} will only work when a subscribed library is synchronized on-demand.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> ContentSubscribedLibraryResult get(library_id)

Returns a given subscribed library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

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

[**ContentSubscribedLibraryResult**](ContentSubscribedLibraryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ContentSubscribedLibraryListResult list

Returns the identifiers of all subscribed libraries in the Content Library.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

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

[**ContentSubscribedLibraryListResult**](ContentSubscribedLibraryListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **probe**
> ContentSubscribedLibraryProbeResult probe(content_subscribed_library_probe)

Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
content_subscribed_library_probe = VSphereAutomation::ContentSubscribedLibraryProbe.new # ContentSubscribedLibraryProbe | 

begin
  #Probes remote library subscription information, including URL, SSL certificate and password. The resulting {@link ProbeResult} {@term structure} describes whether or not the subscription configuration is successful.
  result = api_instance.probe(content_subscribed_library_probe)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->probe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_subscribed_library_probe** | [**ContentSubscribedLibraryProbe**](ContentSubscribedLibraryProbe.md)|  | 

### Return type

[**ContentSubscribedLibraryProbeResult**](ContentSubscribedLibraryProbeResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **sync**
> sync(library_id)

Forces the synchronization of the subscribed library. <p> Synchronizing a subscribed library forcefully with this {@term operation} will perform the same synchronization behavior as would run periodically for the library. The {@link SubscriptionInfo#onDemand} setting is respected. Calling this {@term operation} on a library that is already in the process of synchronizing will have no effect.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(library_id, content_subscribed_library_update)

Updates the properties of a subscribed library. <p> This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.

### Example
```ruby
# load the gem
require 'vsphere-automation-content'

api_instance = VSphereAutomation::Content::SubscribedLibraryApi.new
library_id = 'library_id_example' # String | Identifier of the subscribed library to update.
content_subscribed_library_update = VSphereAutomation::ContentSubscribedLibraryUpdate.new # ContentSubscribedLibraryUpdate | 

begin
  #Updates the properties of a subscribed library. <p> This is an incremental update to the subscribed library. {@term Fields} that are {@term unset} in the update specification will be left unchanged.
  api_instance.update(library_id, content_subscribed_library_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SubscribedLibraryApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **library_id** | **String**| Identifier of the subscribed library to update. | 
 **content_subscribed_library_update** | [**ContentSubscribedLibraryUpdate**](ContentSubscribedLibraryUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



