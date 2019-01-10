# VSphereAutomation::Appliance::TimesyncApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TimesyncApi.md#get) | **GET** /appliance/timesync | Get time synchronization mode.
[**set**](TimesyncApi.md#set) | **PUT** /appliance/timesync | Set time synchronization mode.


# **get**
> ApplianceTimesyncResult get

Get time synchronization mode.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TimesyncApi.new

begin
  #Get time synchronization mode.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TimesyncApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTimesyncResult**](ApplianceTimesyncResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_timesync_set)

Set time synchronization mode.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::TimesyncApi.new
appliance_timesync_set = VSphereAutomation::ApplianceTimesyncSet.new # ApplianceTimesyncSet | 

begin
  #Set time synchronization mode.
  api_instance.set(appliance_timesync_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TimesyncApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_timesync_set** | [**ApplianceTimesyncSet**](ApplianceTimesyncSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



