# VSphereAutomation::Appliance::HealthSwapApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthSwapApi.md#get) | **GET** /appliance/health/swap | Get swap health.


# **get**
> ApplianceHealthSwapResult get

Get swap health.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthSwapApi.new

begin
  #Get swap health.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthSwapApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthSwapResult**](ApplianceHealthSwapResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



