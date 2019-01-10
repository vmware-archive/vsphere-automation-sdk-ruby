# VSphereAutomation::Appliance::HealthDatabasestorageApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthDatabasestorageApi.md#get) | **GET** /appliance/health/database-storage | Get database storage health.


# **get**
> ApplianceHealthDatabasestorageResult get

Get database storage health.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthDatabasestorageApi.new

begin
  #Get database storage health.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthDatabasestorageApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthDatabasestorageResult**](ApplianceHealthDatabasestorageResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



