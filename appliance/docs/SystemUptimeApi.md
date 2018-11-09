# VSphereAutomation::Appliance::SystemUptimeApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemUptimeApi.md#get) | **GET** /appliance/system/uptime | Get the system uptime.


# **get**
> ApplianceSystemUptimeResult get

Get the system uptime.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::SystemUptimeApi.new

begin
  #Get the system uptime.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemUptimeApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceSystemUptimeResult**](ApplianceSystemUptimeResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



