# VSphereAutomation::Appliance::HealthSystemApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthSystemApi.md#get) | **GET** /appliance/health/system | Get overall health of system.
[**lastcheck**](HealthSystemApi.md#lastcheck) | **GET** /appliance/health/system/lastcheck | Get last check timestamp of the health of the system.


# **get**
> ApplianceHealthSystemResult get

Get overall health of system.

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

api_instance = VSphereAutomation::Appliance::HealthSystemApi.new

begin
  #Get overall health of system.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthSystemApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthSystemResult**](ApplianceHealthSystemResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **lastcheck**
> ApplianceHealthSystemLastcheckResult lastcheck

Get last check timestamp of the health of the system.

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

api_instance = VSphereAutomation::Appliance::HealthSystemApi.new

begin
  #Get last check timestamp of the health of the system.
  result = api_instance.lastcheck
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthSystemApi->lastcheck: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceHealthSystemLastcheckResult**](ApplianceHealthSystemLastcheckResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



