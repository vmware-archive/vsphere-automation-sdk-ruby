# VSphereAutomation::VCenter::TrustVcTrustsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TrustVcTrustsApi.md#create) | **POST** /rest/vcenter/trust/vc-trusts | Creates a new trust for domain in given spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](TrustVcTrustsApi.md#delete) | **DELETE** /rest/vcenter/trust/vc-trusts/{domain} | Deletes a trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](TrustVcTrustsApi.md#get) | **GET** /rest/vcenter/trust/vc-trusts/{domain} | Retrieve trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](TrustVcTrustsApi.md#list) | **GET** /rest/vcenter/trust/vc-trusts | Returns summary information for each trust of the local node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](TrustVcTrustsApi.md#update) | **PATCH** /rest/vcenter/trust/vc-trusts/{domain} | Update a trust for given domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> create(request_body)

Creates a new trust for domain in given spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustVcTrustsApi.new
request_body = VCenter::VcenterTrustVcTrustsCreate.new # VcenterTrustVcTrustsCreate | 

begin
  #Creates a new trust for domain in given spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.create(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustVcTrustsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterTrustVcTrustsCreate**](VcenterTrustVcTrustsCreate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(domain)

Deletes a trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustVcTrustsApi.new
domain = 'domain_example' # String | Unique identifier for a domain.

begin
  #Deletes a trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(domain)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustVcTrustsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Unique identifier for a domain. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterTrustVcTrustsResp get(domain)

Retrieve trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustVcTrustsApi.new
domain = 'domain_example' # String | Unique identifier for a domain.

begin
  #Retrieve trust for given domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(domain)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustVcTrustsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Unique identifier for a domain. | 

### Return type

[**VcenterTrustVcTrustsResp**](VcenterTrustVcTrustsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterTrustVcTrustsListResp list

Returns summary information for each trust of the local node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustVcTrustsApi.new

begin
  #Returns summary information for each trust of the local node. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustVcTrustsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterTrustVcTrustsListResp**](VcenterTrustVcTrustsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(domain, request_body)

Update a trust for given domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::TrustVcTrustsApi.new
domain = 'domain_example' # String | Unique identifier for a domain.
request_body = VCenter::VcenterTrustVcTrustsUpdate.new # VcenterTrustVcTrustsUpdate | 

begin
  #Update a trust for given domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(domain, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TrustVcTrustsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Unique identifier for a domain. | 
 **request_body** | [**VcenterTrustVcTrustsUpdate**](VcenterTrustVcTrustsUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



