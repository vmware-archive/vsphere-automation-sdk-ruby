# VSphereAutomation::Appliance::LocalAccountsPolicyApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LocalAccountsPolicyApi.md#get) | **GET** /rest/appliance/local-accounts/global-policy | Get the global password policy.
[**set**](LocalAccountsPolicyApi.md#set) | **PUT** /rest/appliance/local-accounts/global-policy | Set the global password policy.


# **get**
> ApplianceLocalAccountsPolicyResp get

Get the global password policy.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::LocalAccountsPolicyApi.new

begin
  #Get the global password policy.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsPolicyApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceLocalAccountsPolicyResp**](ApplianceLocalAccountsPolicyResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set the global password policy.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::LocalAccountsPolicyApi.new
request_body = Appliance::ApplianceLocalAccountsPolicySet.new # ApplianceLocalAccountsPolicySet | 

begin
  #Set the global password policy.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsPolicyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceLocalAccountsPolicySet**](ApplianceLocalAccountsPolicySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



