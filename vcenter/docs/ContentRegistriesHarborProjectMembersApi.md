# VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContentRegistriesHarborProjectMembersApi.md#create) | **POST** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members | Create a project member for specified Harbor project.
[**delete**](ContentRegistriesHarborProjectMembersApi.md#delete) | **DELETE** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member} | Remove a project member from specified Harbor project.
[**get**](ContentRegistriesHarborProjectMembersApi.md#get) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member} | Get detailed Harbor project member information for specified user or group.
[**list**](ContentRegistriesHarborProjectMembersApi.md#list) | **GET** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members | Returns all members basic information in the specified Harbor project.
[**update**](ContentRegistriesHarborProjectMembersApi.md#update) | **PATCH** /rest/vcenter/content/registries/harbor/{registry}/projects/{project}/members/{member} | Update access control for a member in a registry project.


# **create**
> VcenterContentRegistriesHarborProjectMembersCreateResp create(registry, project, request_body)

Create a project member for specified Harbor project.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi.new
registry = 'registry_example' # String | Identifier of the Registry.
project = 'project_example' # String | Identifier for the project.
request_body = VCenter::VcenterContentRegistriesHarborProjectMembersCreate.new # VcenterContentRegistriesHarborProjectMembersCreate | 

begin
  #Create a project member for specified Harbor project.
  result = api_instance.create(registry, project, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectMembersApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the Registry. | 
 **project** | **String**| Identifier for the project. | 
 **request_body** | [**VcenterContentRegistriesHarborProjectMembersCreate**](VcenterContentRegistriesHarborProjectMembersCreate.md)|  | 

### Return type

[**VcenterContentRegistriesHarborProjectMembersCreateResp**](VcenterContentRegistriesHarborProjectMembersCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(registry, project, member)

Remove a project member from specified Harbor project.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi.new
registry = 'registry_example' # String | Identifier of the Registry.
project = 'project_example' # String | Identifier for the Harbor project.
member = 'member_example' # String | The member for this operation.

begin
  #Remove a project member from specified Harbor project.
  api_instance.delete(registry, project, member)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectMembersApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the Registry. | 
 **project** | **String**| Identifier for the Harbor project. | 
 **member** | **String**| The member for this operation. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterContentRegistriesHarborProjectMembersResp get(registry, project, member)

Get detailed Harbor project member information for specified user or group.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi.new
registry = 'registry_example' # String | Identifier of the Registry.
project = 'project_example' # String | Identifier for the Harbor project.
member = 'member_example' # String | The member for this operation.

begin
  #Get detailed Harbor project member information for specified user or group.
  result = api_instance.get(registry, project, member)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectMembersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the Registry. | 
 **project** | **String**| Identifier for the Harbor project. | 
 **member** | **String**| The member for this operation. | 

### Return type

[**VcenterContentRegistriesHarborProjectMembersResp**](VcenterContentRegistriesHarborProjectMembersResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterContentRegistriesHarborProjectMembersListResp list(registry, project)

Returns all members basic information in the specified Harbor project.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi.new
registry = 'registry_example' # String | Identifier of the Registry.
project = 'project_example' # String | Identifier for the Harbor project.

begin
  #Returns all members basic information in the specified Harbor project.
  result = api_instance.list(registry, project)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectMembersApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the Registry. | 
 **project** | **String**| Identifier for the Harbor project. | 

### Return type

[**VcenterContentRegistriesHarborProjectMembersListResp**](VcenterContentRegistriesHarborProjectMembersListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(registry, project, member, request_body)

Update access control for a member in a registry project.

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

api_instance = VSphereAutomation::VCenter::ContentRegistriesHarborProjectMembersApi.new
registry = 'registry_example' # String | Identifier of the Registry.
project = 'project_example' # String | Identifier for the project.
member = 'member_example' # String | The member for this operation.
request_body = VCenter::VcenterContentRegistriesHarborProjectMembersUpdate.new # VcenterContentRegistriesHarborProjectMembersUpdate | 

begin
  #Update access control for a member in a registry project.
  api_instance.update(registry, project, member, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHarborProjectMembersApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the Registry. | 
 **project** | **String**| Identifier for the project. | 
 **member** | **String**| The member for this operation. | 
 **request_body** | [**VcenterContentRegistriesHarborProjectMembersUpdate**](VcenterContentRegistriesHarborProjectMembersUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



