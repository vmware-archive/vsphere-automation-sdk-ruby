# VSphereAutomation::Appliance::ShutdownApi

All URIs are relative to *http://localhost/rest*

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> ApplianceShutdownResult get

Get details about the pending shutdown action.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **poweroff**
> poweroff(opts)

Power off the appliance.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::ShutdownApi.new
opts = {
  appliance_shutdown_poweroff: VSphereAutomation::ApplianceShutdownPoweroff.new # ApplianceShutdownPoweroff | 
}

begin
  #Power off the appliance.
  api_instance.poweroff(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ShutdownApi->poweroff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_shutdown_poweroff** | [**ApplianceShutdownPoweroff**](ApplianceShutdownPoweroff.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **reboot**
> reboot(opts)

Reboot the appliance.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::ShutdownApi.new
opts = {
  appliance_shutdown_reboot: VSphereAutomation::ApplianceShutdownReboot.new # ApplianceShutdownReboot | 
}

begin
  #Reboot the appliance.
  api_instance.reboot(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ShutdownApi->reboot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_shutdown_reboot** | [**ApplianceShutdownReboot**](ApplianceShutdownReboot.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



