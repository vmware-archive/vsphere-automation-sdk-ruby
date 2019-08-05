# VSphereAutomation::Appliance::ShutdownApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](ShutdownApi.md#cancel) | **POST** /appliance/shutdown/cancel | Cancel pending shutdown action.
[**get**](ShutdownApi.md#get) | **GET** /appliance/shutdown | Get details about the pending shutdown action.
[**poweroff**](ShutdownApi.md#poweroff) | **POST** /appliance/shutdown/poweroff | Power off the appliance.
[**reboot**](ShutdownApi.md#reboot) | **POST** /appliance/shutdown/reboot | Reboot the appliance.


# **cancel**
> cancel

Cancel pending shutdown action.

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

api_instance = VSphereAutomation::Appliance::ShutdownApi.new

begin
  #Cancel pending shutdown action.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ShutdownApi->cancel: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceShutdownResult get

Get details about the pending shutdown action.

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

api_instance = VSphereAutomation::Appliance::ShutdownApi.new

begin
  #Get details about the pending shutdown action.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ShutdownApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceShutdownResult**](ApplianceShutdownResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **poweroff**
> poweroff(request_body)

Power off the appliance.

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

api_instance = VSphereAutomation::Appliance::ShutdownApi.new
request_body = Appliance::ApplianceShutdownPoweroff.new # ApplianceShutdownPoweroff | 

begin
  #Power off the appliance.
  api_instance.poweroff(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ShutdownApi->poweroff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceShutdownPoweroff**](ApplianceShutdownPoweroff.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reboot**
> reboot(request_body)

Reboot the appliance.

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

api_instance = VSphereAutomation::Appliance::ShutdownApi.new
request_body = Appliance::ApplianceShutdownReboot.new # ApplianceShutdownReboot | 

begin
  #Reboot the appliance.
  api_instance.reboot(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ShutdownApi->reboot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceShutdownReboot**](ApplianceShutdownReboot.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



