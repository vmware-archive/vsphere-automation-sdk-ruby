# VSphereAutomation::Appliance::HealthApplmgmtApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthApplmgmtApi.md#get) | **GET** /appliance/health/applmgmt | Get health status of applmgmt services.


# **get**
> ApplianceHealthApplmgmtResult get

Get health status of applmgmt services.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthApplmgmtApi.new

begin
  #Get health status of applmgmt services.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthApplmgmtApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthApplmgmtResult**](ApplianceHealthApplmgmtResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



