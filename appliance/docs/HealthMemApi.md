# VSphereAutomation::Appliance::HealthMemApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthMemApi.md#get) | **GET** /appliance/health/mem | Get memory health.


# **get**
> ApplianceHealthMemResult get

Get memory health.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthMemApi.new

begin
  #Get memory health.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthMemApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthMemResult**](ApplianceHealthMemResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



