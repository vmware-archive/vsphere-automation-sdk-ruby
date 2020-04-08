# VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentRegistriesHarborProjectsApi.md#create) | **POST** /rest/vcenter/content/registries/harbor/{registry}/projects | Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
[**delete**](ContentRegistriesHarborProjectsApi.md#delete) | **DELETE** /rest/vcenter/content/registries/harbor/{registry}/projects/{project} | Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
[**get**](ContentRegistriesHarborProjectsApi.md#get) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects/{project} | Returns detailed information about the specified Harbor project.
[**list**](ContentRegistriesHarborProjectsApi.md#list) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects | Returns basic information of all projects in a Harbor registry.
[**purge**](ContentRegistriesHarborProjectsApi.md#purge) | **POST** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}?action&#x3D;purge | Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.


# **create**
> VcenterContentRegistriesHarborProjectsCreateResp create(registry, request_body)

Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi.new
registry = 'registry_example' # String | Identifier of the Registry.
request_body = VCenter::VcenterContentRegistriesHarborProjectsCreate.new # VcenterContentRegistriesHarborProjectsCreate | 

begin
  #Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is created, a project with same name as the namespace is created in the Harbor registry, so this {@term operation} should not be called.
  result = api_instance.create(registry, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the Registry. | 
 **request_body** | [**VcenterContentRegistriesHarborProjectsCreate**](VcenterContentRegistriesHarborProjectsCreate.md)|  | 

### Return type

[**VcenterContentRegistriesHarborProjectsCreateResp**](VcenterContentRegistriesHarborProjectsCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(registry, project)

Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi.new
registry = 'registry_example' # String | Identifier of the registry.
project = 'project_example' # String | Identifier of the Harbor project.

begin
  #Deletes the specified project from Harbor registry. Repositories and images in the project will be removed upon project deletion. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a namespace is deleted, a project with same name as the namespace is deleted from the Harbor registry, so this {@term operation} should not be called.
  api_instance.delete(registry, project)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the registry. | 
 **project** | **String**| Identifier of the Harbor project. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterContentRegistriesHarborProjectsResp get(registry, project)

Returns detailed information about the specified Harbor project.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi.new
registry = 'registry_example' # String | Identifier of the registry.
project = 'project_example' # String | Identifier of the Harbor project.

begin
  #Returns detailed information about the specified Harbor project.
  result = api_instance.get(registry, project)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the registry. | 
 **project** | **String**| Identifier of the Harbor project. | 

### Return type

[**VcenterContentRegistriesHarborProjectsResp**](VcenterContentRegistriesHarborProjectsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterContentRegistriesHarborProjectsListResp list(registry)

Returns basic information of all projects in a Harbor registry.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi.new
registry = 'registry_example' # String | Identifier of the registry.

begin
  #Returns basic information of all projects in a Harbor registry.
  result = api_instance.list(registry)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the registry. | 

### Return type

[**VcenterContentRegistriesHarborProjectsListResp**](VcenterContentRegistriesHarborProjectsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **purge**
> purge(registry, project)

Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectsApi.new
registry = 'registry_example' # String | Registry identifier.
project = 'project_example' # String | Identifier of the Harbor project.

begin
  #Remove all repositories, images and members in the project. Storage space of deleted images in the project will be reclaimed through next scheduled Harbor registry garbage collection.
  api_instance.purge(registry, project)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectsApi->purge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Registry identifier. | 
 **project** | **String**| Identifier of the Harbor project. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



