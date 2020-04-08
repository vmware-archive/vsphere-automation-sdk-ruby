# VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**join**](ActivedirectoryActiveDirectoryApi.md#join) | **POST** /rest/vcenter/system/active-directory | Join the appliance to given domain.
[**leave**](ActivedirectoryActiveDirectoryApi.md#leave) | **PATCH** /rest/vcenter/system/active-directory | Leave the registered domain, if registered to any.
[**status**](ActivedirectoryActiveDirectoryApi.md#status) | **GET** /rest/vcenter/system/active-directory | Returns the Active Directory Domain Join Status of the system the identity server is executing on.


# **join**
> join(request_body)

Join the appliance to given domain.

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

api_instance = VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi.new
request_body = VCenter::VcenterActivedirectoryActiveDirectoryJoin.new # VcenterActivedirectoryActiveDirectoryJoin | 

begin
  #Join the appliance to given domain.
  api_instance.join(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ActivedirectoryActiveDirectoryApi->join: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterActivedirectoryActiveDirectoryJoin**](VcenterActivedirectoryActiveDirectoryJoin.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **leave**
> leave(request_body)

Leave the registered domain, if registered to any.

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

api_instance = VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi.new
request_body = VCenter::VcenterActivedirectoryActiveDirectoryLeave.new # VcenterActivedirectoryActiveDirectoryLeave | 

begin
  #Leave the registered domain, if registered to any.
  api_instance.leave(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ActivedirectoryActiveDirectoryApi->leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterActivedirectoryActiveDirectoryLeave**](VcenterActivedirectoryActiveDirectoryLeave.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **status**
> VcenterActivedirectoryActiveDirectoryStatusResp status

Returns the Active Directory Domain Join Status of the system the identity server is executing on.

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

api_instance = VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi.new

begin
  #Returns the Active Directory Domain Join Status of the system the identity server is executing on.
  result = api_instance.status
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ActivedirectoryActiveDirectoryApi->status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterActivedirectoryActiveDirectoryStatusResp**](VcenterActivedirectoryActiveDirectoryStatusResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



