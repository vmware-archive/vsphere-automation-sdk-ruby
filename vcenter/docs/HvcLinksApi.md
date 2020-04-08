# VSphereAutomation::VCenter::HvcLinksApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](HvcLinksApi.md#create) | **POST** /rest/hvc/links | Creates a new hybrid link between the local and foreign PSC. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**delete**](HvcLinksApi.md#delete) | **DELETE** /rest/hvc/links/{link} | Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**delete_with_credentials**](HvcLinksApi.md#delete_with_credentials) | **POST** /rest/hvc/links/{link}?action&#x3D;delete | Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](HvcLinksApi.md#get) | **GET** /rest/hvc/links/{link} | Gets information for a link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](HvcLinksApi.md#list) | **GET** /rest/hvc/links | Enumerates the list of registered hybrid links. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **create**
> VcenterHvcLinksCreateResp create(request_body)

Creates a new hybrid link between the local and foreign PSC. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VCenter::HvcLinksApi.new
request_body = VCenter::VcenterHvcLinksCreate.new # VcenterHvcLinksCreate | 

begin
  #Creates a new hybrid link between the local and foreign PSC. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterHvcLinksCreate**](VcenterHvcLinksCreate.md)|  | 

### Return type

[**VcenterHvcLinksCreateResp**](VcenterHvcLinksCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(link)

Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VCenter::HvcLinksApi.new
link = 'link_example' # String | Identifier of the hybrid link.

begin
  #Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  api_instance.delete(link)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Identifier of the hybrid link. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_with_credentials**
> delete_with_credentials(link, opts)

Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HvcLinksApi.new
link = 'link_example' # String | Identifier of the hybrid link.
opts = {
  request_body: VCenter::VcenterHvcLinksDeleteWithCredentials.new # VcenterHvcLinksDeleteWithCredentials | 
}

begin
  #Deletes an existing hybrid link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete_with_credentials(link, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksApi->delete_with_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Identifier of the hybrid link. | 
 **request_body** | [**VcenterHvcLinksDeleteWithCredentials**](VcenterHvcLinksDeleteWithCredentials.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterHvcLinksResp get(link)

Gets information for a link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HvcLinksApi.new
link = 'link_example' # String | Unique identifier of the link.

begin
  #Gets information for a link. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(link)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | **String**| Unique identifier of the link. | 

### Return type

[**VcenterHvcLinksResp**](VcenterHvcLinksResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterHvcLinksListResp list

Enumerates the list of registered hybrid links. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VCenter::HvcLinksApi.new

begin
  #Enumerates the list of registered hybrid links. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HvcLinksApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterHvcLinksListResp**](VcenterHvcLinksListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



