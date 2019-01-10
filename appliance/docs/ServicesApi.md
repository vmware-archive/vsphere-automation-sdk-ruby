# VSphereAutomation::Appliance::ServicesApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ServicesApi.md#get) | **GET** /appliance/services/{service} | Returns the state of a service.
[**list**](ServicesApi.md#list) | **GET** /appliance/services | Lists details of vCenter services.
[**restart**](ServicesApi.md#restart) | **POST** /appliance/services/{service}/restart | Restarts a service
[**start**](ServicesApi.md#start) | **POST** /appliance/services/{service}/start | Starts a service
[**stop**](ServicesApi.md#stop) | **POST** /appliance/services/{service}/stop | Stops a service


# **get**
> ApplianceServicesResult get(service)

Returns the state of a service.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::ServicesApi.new
service = 'service_example' # String | identifier of the service whose state is being queried.

begin
  #Returns the state of a service.
  result = api_instance.get(service)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service whose state is being queried. | 

### Return type

[**ApplianceServicesResult**](ApplianceServicesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceServicesListResult list

Lists details of vCenter services.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::ServicesApi.new

begin
  #Lists details of vCenter services.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceServicesListResult**](ApplianceServicesListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **restart**
> restart(service)

Restarts a service

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::ServicesApi.new
service = 'service_example' # String | identifier of the service to restart

begin
  #Restarts a service
  api_instance.restart(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesApi->restart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to restart | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **start**
> start(service)

Starts a service

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::ServicesApi.new
service = 'service_example' # String | identifier of the service to start

begin
  #Starts a service
  api_instance.start(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to start | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **stop**
> stop(service)

Stops a service

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::ServicesApi.new
service = 'service_example' # String | identifier of the service to stop

begin
  #Stops a service
  api_instance.stop(service)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesApi->stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service to stop | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



