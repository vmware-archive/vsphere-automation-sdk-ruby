# VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](IdentityForeignSecurityPrincipalsApi.md#create) | **POST** /rest/vcenter/identity/foreign-security-principals | Create a foreign security principal. If the same Id already exists, update the record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](IdentityForeignSecurityPrincipalsApi.md#get) | **GET** /rest/vcenter/identity/foreign-security-principals/{principal} | Retrieve foreign security principal based on the identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list_domains**](IdentityForeignSecurityPrincipalsApi.md#list_domains) | **GET** /rest/vcenter/identity/foreign-security-principals/domains | Retrieve all domain names associated with foreign security principals. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](IdentityForeignSecurityPrincipalsApi.md#update) | **PATCH** /rest/vcenter/identity/foreign-security-principals/{id} | Update a foreign security principal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> create(request_body)

Create a foreign security principal. If the same Id already exists, update the record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi.new
request_body = VCenter::VcenterIdentityForeignSecurityPrincipalsCreate.new # VcenterIdentityForeignSecurityPrincipalsCreate | 

begin
  #Create a foreign security principal. If the same Id already exists, update the record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.create(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityForeignSecurityPrincipalsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterIdentityForeignSecurityPrincipalsCreate**](VcenterIdentityForeignSecurityPrincipalsCreate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterIdentityForeignSecurityPrincipalsResp get(principal)

Retrieve foreign security principal based on the identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi.new
principal = 'principal_example' # String | the principal identifier or name.

begin
  #Retrieve foreign security principal based on the identifier. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(principal)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityForeignSecurityPrincipalsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principal** | **String**| the principal identifier or name. | 

### Return type

[**VcenterIdentityForeignSecurityPrincipalsResp**](VcenterIdentityForeignSecurityPrincipalsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_domains**
> VcenterIdentityForeignSecurityPrincipalsListDomainsResp list_domains

Retrieve all domain names associated with foreign security principals. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi.new

begin
  #Retrieve all domain names associated with foreign security principals. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list_domains
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityForeignSecurityPrincipalsApi->list_domains: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterIdentityForeignSecurityPrincipalsListDomainsResp**](VcenterIdentityForeignSecurityPrincipalsListDomainsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(id, request_body)

Update a foreign security principal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::IdentityForeignSecurityPrincipalsApi.new
id = 'id_example' # String | the principal identifier.
request_body = VCenter::VcenterIdentityForeignSecurityPrincipalsUpdate.new # VcenterIdentityForeignSecurityPrincipalsUpdate | 

begin
  #Update a foreign security principal. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(id, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling IdentityForeignSecurityPrincipalsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| the principal identifier. | 
 **request_body** | [**VcenterIdentityForeignSecurityPrincipalsUpdate**](VcenterIdentityForeignSecurityPrincipalsUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



