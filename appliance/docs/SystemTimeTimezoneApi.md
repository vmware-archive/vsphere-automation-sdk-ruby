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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_system_time_timezone_set)

Set time zone.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::SystemTimeTimezoneApi.new
appliance_system_time_timezone_set = VSphereAutomation::ApplianceSystemTimeTimezoneSet.new # ApplianceSystemTimeTimezoneSet | 

begin
  #Set time zone.
  api_instance.set(appliance_system_time_timezone_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemTimeTimezoneApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_system_time_timezone_set** | [**ApplianceSystemTimeTimezoneSet**](ApplianceSystemTimeTimezoneSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



