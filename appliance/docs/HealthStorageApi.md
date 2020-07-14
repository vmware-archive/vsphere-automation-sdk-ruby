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
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



