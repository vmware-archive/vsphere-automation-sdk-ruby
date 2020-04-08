# VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#delete) | **DELETE** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component} | Deletes the given component from the software draft.
[**get**](SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#get) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component} | Returns the component version for the given component in the software draft.
[**list**](SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#list) | **GET** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components | Returns the components that comprise the software draft.
[**set**](SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#set) | **PUT** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components/{component} | Set the component version for a given component in the software draft. This will overwrite any existing version for the given component.
[**update**](SettingsClustersSoftwareDraftsSoftwareComponentsApi.md#update) | **PATCH** /api/esx/settings/clusters/{cluster}/software/drafts/{draft}/software/components | Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation.


# **delete**
> delete(cluster, draft, component)

Deletes the given component from the software draft.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.
component = 'component_example' # String | Identifier of the component.

begin
  #Deletes the given component from the software draft.
  api_instance.delete(cluster, draft, component)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **component** | **String**| Identifier of the component. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> EsxSettingsComponentInfo get(cluster, draft, component)

Returns the component version for the given component in the software draft.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.
component = 'component_example' # String | Identifier of the component.

begin
  #Returns the component version for the given component in the software draft.
  result = api_instance.get(cluster, draft, component)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **component** | **String**| Identifier of the component. | 

### Return type

[**EsxSettingsComponentInfo**](EsxSettingsComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Hash&lt;String, EsxSettingsComponentInfo&gt; list(cluster, draft)

Returns the components that comprise the software draft.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.

begin
  #Returns the components that comprise the software draft.
  result = api_instance.list(cluster, draft)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 

### Return type

[**Hash&lt;String, EsxSettingsComponentInfo&gt;**](EsxSettingsComponentInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(cluster, draft, component, opts)

Set the component version for a given component in the software draft. This will overwrite any existing version for the given component.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.
component = 'component_example' # String | Identifier of the component.
opts = {
  request_body: 'request_body_example' # String | 
}

begin
  #Set the component version for a given component in the software draft. This will overwrite any existing version for the given component.
  api_instance.set(cluster, draft, component, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **component** | **String**| Identifier of the component. | 
 **request_body** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update**
> update(cluster, draft, opts)

Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation.

### Example
```ruby
# load the gem
require 'vsphere-automation-esx'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareComponentsApi.new
cluster = 'cluster_example' # String | Identifier of the cluster.
draft = 'draft_example' # String | Identifier of the working copy document.
opts = {
  request_body: ESX::EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdateSpec.new # EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdateSpec | 
}

begin
  #Updates the list of components in a given draft. This allows set and/or delete of multiple components in a batch operation.
  api_instance.update(cluster, draft, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SettingsClustersSoftwareDraftsSoftwareComponentsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. | 
 **draft** | **String**| Identifier of the working copy document. | 
 **request_body** | **EsxSettingsClustersSoftwareDraftsSoftwareComponentsUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



