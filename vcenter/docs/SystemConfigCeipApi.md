# VSphereAutomation::VCenter::SystemConfigCeipApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemConfigCeipApi.md#get) | **GET** /rest/vcenter/system-config/ceip | Get CEIP (Customer Experience Improvement Program) value.
[**set**](SystemConfigCeipApi.md#set) | **PUT** /rest/vcenter/system-config/ceip | Set CEIP (Customer Experience Improvement Program) value.


# **get**
> VcenterSystemConfigCeipResp get

Get CEIP (Customer Experience Improvement Program) value.

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

api_instance = VSphereAutomation::VCenter::SystemConfigCeipApi.new

begin
  #Get CEIP (Customer Experience Improvement Program) value.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigCeipApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterSystemConfigCeipResp**](VcenterSystemConfigCeipResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set CEIP (Customer Experience Improvement Program) value.

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

api_instance = VSphereAutomation::VCenter::SystemConfigCeipApi.new
request_body = VCenter::VcenterSystemConfigCeipSet.new # VcenterSystemConfigCeipSet | 

begin
  #Set CEIP (Customer Experience Improvement Program) value.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigCeipApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSystemConfigCeipSet**](VcenterSystemConfigCeipSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



