# VSphereAutomation::Appliance::AccessDcuiApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessDcuiApi.md#get) | **GET** /rest/appliance/access/dcui | Get enabled state of Direct Console User Interface (DCUI TTY2).
[**set**](AccessDcuiApi.md#set) | **PUT** /rest/appliance/access/dcui | Set enabled state of Direct Console User Interface (DCUI TTY2).


# **get**
> ApplianceAccessDcuiResp get

Get enabled state of Direct Console User Interface (DCUI TTY2).

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

api_instance = VSphereAutomation::Appliance::AccessDcuiApi.new

begin
  #Get enabled state of Direct Console User Interface (DCUI TTY2).
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessDcuiApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessDcuiResp**](ApplianceAccessDcuiResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set enabled state of Direct Console User Interface (DCUI TTY2).

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

api_instance = VSphereAutomation::Appliance::AccessDcuiApi.new
request_body = Appliance::ApplianceAccessDcuiSet.new # ApplianceAccessDcuiSet | 

begin
  #Set enabled state of Direct Console User Interface (DCUI TTY2).
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessDcuiApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceAccessDcuiSet**](ApplianceAccessDcuiSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



