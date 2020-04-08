# VSphereAutomation::Appliance::TechpreviewServicesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TechpreviewServicesApi.md#list) | **GET** /rest/appliance/techpreview/services | Get a list of all known services.
[**restart**](TechpreviewServicesApi.md#restart) | **POST** /rest/appliance/techpreview/services/restart | start or restart a service
[**stop**](TechpreviewServicesApi.md#stop) | **POST** /rest/appliance/techpreview/services/stop | Stop a service


# **list**
> ApplianceTechpreviewServicesListResp list

Get a list of all known services.

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

api_instance = VSphereAutomation::Appliance::TechpreviewServicesApi.new

begin
  #Get a list of all known services.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewServicesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceTechpreviewServicesListResp**](ApplianceTechpreviewServicesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **restart**
> restart(request_body)

start or restart a service

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

api_instance = VSphereAutomation::Appliance::TechpreviewServicesApi.new
request_body = Appliance::ApplianceTechpreviewServicesRestart.new # ApplianceTechpreviewServicesRestart | 

begin
  #start or restart a service
  api_instance.restart(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewServicesApi->restart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewServicesRestart**](ApplianceTechpreviewServicesRestart.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **stop**
> stop(request_body)

Stop a service

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

api_instance = VSphereAutomation::Appliance::TechpreviewServicesApi.new
request_body = Appliance::ApplianceTechpreviewServicesStop.new # ApplianceTechpreviewServicesStop | 

begin
  #Stop a service
  api_instance.stop(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TechpreviewServicesApi->stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceTechpreviewServicesStop**](ApplianceTechpreviewServicesStop.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



