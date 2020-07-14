# VSphereAutomation::Appliance::VmonServiceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmonServiceApi.md#get) | **GET** /appliance/vmon/service/{service} | Returns the state of a service.
[**list_details**](VmonServiceApi.md#list_details) | **GET** /appliance/vmon/service | Lists details of services managed by vMon.
[**restart**](VmonServiceApi.md#restart) | **POST** /appliance/vmon/service/{service}/restart | Restarts a service
[**start**](VmonServiceApi.md#start) | **POST** /appliance/vmon/service/{service}/start | Starts a service
[**stop**](VmonServiceApi.md#stop) | **POST** /appliance/vmon/service/{service}/stop | Stops a service
[**update**](VmonServiceApi.md#update) | **PATCH** /appliance/vmon/service/{service} | Updates the properties of a service.


# **get**
> ApplianceVmonServiceResult get(service)

Returns the state of a service.

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

api_instance = VSphereAutomation::Appliance::VmonServiceApi.new
service = 'service_example' # String | identifier of the service whose state is being queried. The parameter must be an identifier for the resource type: appliance.vmon.Service.

begin
  #Returns the state of a service.
  result = api_instance.get(service)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmonServiceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service whose state is being queried. The parameter must be an identifier for the resource type: appliance.vmon.Service. | 

### Return type

[**ApplianceVmonServiceResult**](ApplianceVmonServiceResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_details**
> ApplianceVmonServiceListDetailsResult list_details

Lists details of services managed by vMon.

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

api_instance = VSphereAutomation::Appliance::VmonServiceApi.new

begin
  #Lists details of services managed by vMon.
  result = api_instance.list_details
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmonServiceApi->list_details: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceVmonServiceListDetailsResult**](ApplianceVmonServiceListDetailsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **restart**
> restart(service)

Restarts a service

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

api_instance = VSphereAutomation::Appliance::VmonServiceApi.new
service = 'service_example' # String | identifier of the service to restart The parameter must be an identifier for the resource type: appliance.vmon.Service.

begin
  #Restarts a service
  api_instance.restart(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmonServiceApi->restart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to restart The parameter must be an identifier for the resource type: appliance.vmon.Service. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **start**
> start(service)

Starts a service

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

api_instance = VSphereAutomation::Appliance::VmonServiceApi.new
service = 'service_example' # String | identifier of the service to start The parameter must be an identifier for the resource type: appliance.vmon.Service.

begin
  #Starts a service
  api_instance.start(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmonServiceApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to start The parameter must be an identifier for the resource type: appliance.vmon.Service. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stop**
> stop(service)

Stops a service

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

api_instance = VSphereAutomation::Appliance::VmonServiceApi.new
service = 'service_example' # String | identifier of the service to stop The parameter must be an identifier for the resource type: appliance.vmon.Service.

begin
  #Stops a service
  api_instance.stop(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmonServiceApi->stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to stop The parameter must be an identifier for the resource type: appliance.vmon.Service. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(service, request_body)

Updates the properties of a service.

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

api_instance = VSphereAutomation::Appliance::VmonServiceApi.new
service = 'service_example' # String | identifier of the service whose properties are being updated. The parameter must be an identifier for the resource type: appliance.vmon.Service.
request_body = Appliance::ApplianceVmonServiceUpdate.new # ApplianceVmonServiceUpdate | 

begin
  #Updates the properties of a service.
  api_instance.update(service, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmonServiceApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service whose properties are being updated. The parameter must be an identifier for the resource type: appliance.vmon.Service. | 
 **request_body** | [**ApplianceVmonServiceUpdate**](ApplianceVmonServiceUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



