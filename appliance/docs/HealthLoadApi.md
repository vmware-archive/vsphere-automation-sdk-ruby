# VSphereAutomation::Appliance::HealthLoadApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthLoadApi.md#get) | **GET** /appliance/health/load | Get load health.


# **get**
> ApplianceHealthLoadResult get

Get load health.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthLoadApi.new

begin
  #Get load health.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthLoadApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthLoadResult**](ApplianceHealthLoadResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



