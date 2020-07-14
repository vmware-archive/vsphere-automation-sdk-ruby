# VSphereAutomation::VCenter::ServicesServiceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ServicesServiceApi.md#get) | **GET** /vcenter/services/{service} | Returns the state of a service.
[**list_details**](ServicesServiceApi.md#list_details) | **GET** /vcenter/services | Lists details of vCenter services.
[**restart**](ServicesServiceApi.md#restart) | **POST** /vcenter/services/{service}/restart | Restarts a service
[**start**](ServicesServiceApi.md#start) | **POST** /vcenter/services/{service}/start | Starts a service
[**stop**](ServicesServiceApi.md#stop) | **POST** /vcenter/services/{service}/stop | Stops a service
[**update**](ServicesServiceApi.md#update) | **PATCH** /vcenter/services/{service} | Updates the properties of a service.


# **get**
> VcenterServicesServiceResult get(service)

Returns the state of a service.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ServicesServiceApi.new
service = 'service_example' # String | identifier of the service whose state is being queried.

begin
  #Returns the state of a service.
  result = api_instance.get(service)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesServiceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service whose state is being queried. | 

### Return type

[**VcenterServicesServiceResult**](VcenterServicesServiceResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_details**
> VcenterServicesServiceListDetailsResult list_details

Lists details of vCenter services.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ServicesServiceApi.new

begin
  #Lists details of vCenter services.
  result = api_instance.list_details
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesServiceApi->list_details: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterServicesServiceListDetailsResult**](VcenterServicesServiceListDetailsResult.md)

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
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ServicesServiceApi.new
service = 'service_example' # String | identifier of the service to restart

begin
  #Restarts a service
  api_instance.restart(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesServiceApi->restart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to restart | 

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
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ServicesServiceApi.new
service = 'service_example' # String | identifier of the service to start

begin
  #Starts a service
  api_instance.start(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesServiceApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to start | 

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
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ServicesServiceApi.new
service = 'service_example' # String | identifier of the service to stop

begin
  #Stops a service
  api_instance.stop(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesServiceApi->stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to stop | 

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
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ServicesServiceApi.new
service = 'service_example' # String | identifier of the service whose properties are being updated.
request_body = VCenter::VcenterServicesServiceUpdate.new # VcenterServicesServiceUpdate | 

begin
  #Updates the properties of a service.
  api_instance.update(service, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesServiceApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service whose properties are being updated. | 
 **request_body** | [**VcenterServicesServiceUpdate**](VcenterServicesServiceUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



