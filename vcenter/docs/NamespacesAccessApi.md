# VSphereAutomation::VCenter::NamespacesAccessApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](NamespacesAccessApi.md#create) | **POST** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Set up access control for the subject on given domain on the namespace.
[**delete**](NamespacesAccessApi.md#delete) | **DELETE** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Remove access control of the subject on given domain from the namespace.
[**get**](NamespacesAccessApi.md#get) | **GET** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Get the information about the access control of the subject on given domain on the namespace.
[**set**](NamespacesAccessApi.md#set) | **PUT** /api/vcenter/namespaces/instances/{namespace}/access/{domain}/{subject} | Set new access control on the namespace for the subject on given domain.


# **create**
> create(namespace, domain, subject, type, opts)

Set up access control for the subject on given domain on the namespace.

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

api_instance = VSphereAutomation::VCenter::NamespacesAccessApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
domain = 'domain_example' # String | The domain of the subject.
subject = 'subject_example' # String | The principal for this operation.
type = 'type_example' # String | { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
opts = {
  request_body: VCenter::VcenterNamespacesAccessCreateSpec.new # VcenterNamespacesAccessCreateSpec | 
}

begin
  #Set up access control for the subject on given domain on the namespace.
  api_instance.create(namespace, domain, subject, type, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesAccessApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 
 **domain** | **String**| The domain of the subject. | 
 **subject** | **String**| The principal for this operation. | 
 **type** | **String**| { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). } | 
 **request_body** | **VcenterNamespacesAccessCreateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(namespace, domain, subject, type)

Remove access control of the subject on given domain from the namespace.

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

api_instance = VSphereAutomation::VCenter::NamespacesAccessApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
domain = 'domain_example' # String | The domain of the subject.
subject = 'subject_example' # String | The principal for this operation.
type = 'type_example' # String | { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }

begin
  #Remove access control of the subject on given domain from the namespace.
  api_instance.delete(namespace, domain, subject, type)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesAccessApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 
 **domain** | **String**| The domain of the subject. | 
 **subject** | **String**| The principal for this operation. | 
 **type** | **String**| { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). } | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterNamespacesAccessInfo get(namespace, domain, subject, type)

Get the information about the access control of the subject on given domain on the namespace.

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

api_instance = VSphereAutomation::VCenter::NamespacesAccessApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
domain = 'domain_example' # String | The domain of the subject.
subject = 'subject_example' # String | The principal for this operation.
type = 'type_example' # String | { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }

begin
  #Get the information about the access control of the subject on given domain on the namespace.
  result = api_instance.get(namespace, domain, subject, type)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesAccessApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 
 **domain** | **String**| The domain of the subject. | 
 **subject** | **String**| The principal for this operation. | 
 **type** | **String**| { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). } | 

### Return type

[**VcenterNamespacesAccessInfo**](VcenterNamespacesAccessInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(namespace, domain, subject, type, opts)

Set new access control on the namespace for the subject on given domain.

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

api_instance = VSphereAutomation::VCenter::NamespacesAccessApi.new
namespace = 'namespace_example' # String | Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance.
domain = 'domain_example' # String | The domain of the subject.
subject = 'subject_example' # String | The principal for this operation.
type = 'type_example' # String | { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). }
opts = {
  request_body: VCenter::VcenterNamespacesAccessSetSpec.new # VcenterNamespacesAccessSetSpec | 
}

begin
  #Set new access control on the namespace for the subject on given domain.
  api_instance.set(namespace, domain, subject, type, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesAccessApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Identifier for the namespace. The parameter must be an identifier for the resource type: vcenter.namespaces.Instance. | 
 **domain** | **String**| The domain of the subject. | 
 **subject** | **String**| The principal for this operation. | 
 **type** | **String**| { 1. The Access.SubjectType enumerated type lists the types of subjects who can be associated with a Access.Role on the namespace. }, { 2. The type of subject (user or group). } | 
 **request_body** | **VcenterNamespacesAccessSetSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



