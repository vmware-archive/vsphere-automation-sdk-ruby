# VSphereAutomation::Appliance::HealthStorageApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthStorageApi.md#get) | **GET** /appliance/health/storage | Get storage health.


# **get**
> ApplianceHealthStorageResult get

Get storage health.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthStorageApi.new

begin
  #Get storage health.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthStorageApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthStorageResult**](ApplianceHealthStorageResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



