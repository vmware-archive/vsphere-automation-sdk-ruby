# VSphereAutomation::VCenter::IdentityVcIdentityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](IdentityVcIdentityApi.md#get) | **GET** /rest/vcenter/identity/vc-identity | Retrieve VcIdentity for local domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](IdentityVcIdentityApi.md#update) | **PATCH** /rest/vcenter/identity/vc-identity | Update the VcIdentity for local domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterIdentityVcIdentityResp get

Retrieve VcIdentity for local domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::IdentityVcIdentityApi.new

begin
  #Retrieve VcIdentity for local domain. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityVcIdentityApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterIdentityVcIdentityResp**](VcenterIdentityVcIdentityResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(request_body)

Update the VcIdentity for local domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::IdentityVcIdentityApi.new
request_body = VCenter::VcenterIdentityVcIdentityUpdate.new # VcenterIdentityVcIdentityUpdate | 

begin
  #Update the VcIdentity for local domain with data in given UpdateSpec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityVcIdentityApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterIdentityVcIdentityUpdate**](VcenterIdentityVcIdentityUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



