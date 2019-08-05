# VSphereAutomation::Appliance::SystemTimeTimezoneApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemTimeTimezoneApi.md#get) | **GET** /appliance/system/time/timezone | Get time zone.
[**set**](SystemTimeTimezoneApi.md#set) | **PUT** /appliance/system/time/timezone | Set time zone.


# **get**
> ApplianceSystemTimeTimezoneResult get

Get time zone.

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

api_instance = VSphereAutomation::Appliance::SystemTimeTimezoneApi.new

begin
  #Get time zone.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemTimeTimezoneApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceSystemTimeTimezoneResult**](ApplianceSystemTimeTimezoneResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set time zone.

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

api_instance = VSphereAutomation::Appliance::SystemTimeTimezoneApi.new
request_body = Appliance::ApplianceSystemTimeTimezoneSet.new # ApplianceSystemTimeTimezoneSet | 

begin
  #Set time zone.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemTimeTimezoneApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceSystemTimeTimezoneSet**](ApplianceSystemTimeTimezoneSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



