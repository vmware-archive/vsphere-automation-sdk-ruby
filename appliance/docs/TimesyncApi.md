# VSphereAutomation::Appliance::TimesyncApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](TimesyncApi.md#get) | **GET** /appliance/timesync | Get time synchronization mode.
[**set**](TimesyncApi.md#set) | **PUT** /appliance/timesync | Set time synchronization mode.


# **get**
> ApplianceTimesyncResult get

Get time synchronization mode.

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

api_instance = VSphereAutomation::Appliance::TimesyncApi.new

begin
  #Get time synchronization mode.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TimesyncApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTimesyncResult**](ApplianceTimesyncResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Set time synchronization mode.

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

api_instance = VSphereAutomation::Appliance::TimesyncApi.new
request_body = Appliance::ApplianceTimesyncSet.new # ApplianceTimesyncSet | 

begin
  #Set time synchronization mode.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TimesyncApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTimesyncSet**](ApplianceTimesyncSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



