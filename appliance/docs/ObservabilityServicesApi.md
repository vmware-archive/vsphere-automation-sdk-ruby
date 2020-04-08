# VSphereAutomation::Appliance::ObservabilityServicesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ObservabilityServicesApi.md#create) | **POST** /api/appliance/observability/services | Adds services to observability&#39;s monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**delete**](ObservabilityServicesApi.md#delete) | **DELETE** /api/appliance/observability/services/{name} | Removes the service from observability monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**get**](ObservabilityServicesApi.md#get) | **GET** /api/appliance/observability/services/{name} | Gets status of service being monitored by cloud observability or not. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**list**](ObservabilityServicesApi.md#list) | **GET** /api/appliance/observability/services | Lists all the services currently enabled for monitoring and disabled from monitoring by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**update**](ObservabilityServicesApi.md#update) | **PATCH** /api/appliance/observability/services/{name} | Updates service status to enable or disable from being monitored by observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  


# **create**
> create(opts)

Adds services to observability's monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityServicesApi.new
opts = {
  request_body: Appliance::ApplianceObservabilityServicesCreateSpec.new # ApplianceObservabilityServicesCreateSpec | 
}

begin
  #Adds services to observability's monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityServicesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **ApplianceObservabilityServicesCreateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(name)

Removes the service from observability monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityServicesApi.new
name = 'name_example' # String | Identifier of the service to be removed. The parameter must be an identifier for the resource type: appliance.observability.service.

begin
  #Removes the service from observability monitoring services list. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.delete(name)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityServicesApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the service to be removed. The parameter must be an identifier for the resource type: appliance.observability.service. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceObservabilityServicesInfo get(name)

Gets status of service being monitored by cloud observability or not. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityServicesApi.new
name = 'name_example' # String | Identifier of the service for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.service.

begin
  #Gets status of service being monitored by cloud observability or not. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.get(name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityServicesApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the service for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.service. | 

### Return type

[**ApplianceObservabilityServicesInfo**](ApplianceObservabilityServicesInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;ApplianceObservabilityServicesSummary&gt; list

Lists all the services currently enabled for monitoring and disabled from monitoring by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityServicesApi.new

begin
  #Lists all the services currently enabled for monitoring and disabled from monitoring by cloud observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityServicesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApplianceObservabilityServicesSummary&gt;**](ApplianceObservabilityServicesSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(name, status)

Updates service status to enable or disable from being monitored by observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityServicesApi.new
name = 'name_example' # String | Identifier of the service for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.service.
status = 'status_example' # String | The Services.Status enumerated type defines the enablement status of Services. Note: This enumeration is restricted for VMware internal use only.

begin
  #Updates service status to enable or disable from being monitored by observability. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.update(name, status)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityServicesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the service for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.service. | 
 **status** | **String**| The Services.Status enumerated type defines the enablement status of Services. Note: This enumeration is restricted for VMware internal use only. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



