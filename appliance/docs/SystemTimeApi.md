# VSphereAutomation::Appliance::SystemTimeApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemTimeApi.md#get) | **GET** /appliance/system/time | Get system time.


# **get**
> ApplianceSystemTimeResult get

Get system time.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::SystemTimeApi.new

begin
  #Get system time.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemTimeApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceSystemTimeResult**](ApplianceSystemTimeResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



