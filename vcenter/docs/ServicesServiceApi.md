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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list_details**
> VcenterServicesServiceListDetailsResult list_details

Lists details of vCenter services.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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
require 'vsphere-automation-vcenter'

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
require 'vsphere-automation-vcenter'

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
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(service, vcenter_services_service_update)

Updates the properties of a service.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::ServicesServiceApi.new
service = 'service_example' # String | identifier of the service whose properties are being updated.
vcenter_services_service_update = VSphereAutomation::VcenterServicesServiceUpdate.new # VcenterServicesServiceUpdate | 

begin
  #Updates the properties of a service.
  api_instance.update(service, vcenter_services_service_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ServicesServiceApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| identifier of the service whose properties are being updated. | 
 **vcenter_services_service_update** | [**VcenterServicesServiceUpdate**](VcenterServicesServiceUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



