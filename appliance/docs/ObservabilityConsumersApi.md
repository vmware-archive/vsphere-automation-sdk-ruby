# VSphereAutomation::Appliance::ObservabilityConsumersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ObservabilityConsumersApi.md#create) | **POST** /api/appliance/observability/consumers | Adds consumer for subscribing to observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**delete**](ObservabilityConsumersApi.md#delete) | **DELETE** /api/appliance/observability/consumers/{name} | Removes the consumer from observability data subscription. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**get**](ObservabilityConsumersApi.md#get) | **GET** /api/appliance/observability/consumers/{name} | Gets subscription enable status and subscribed topics of particular consumer. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**list**](ObservabilityConsumersApi.md#list) | **GET** /api/appliance/observability/consumers | Lists all the subscribed consumers for Observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**update**](ObservabilityConsumersApi.md#update) | **PATCH** /api/appliance/observability/consumers/{name} | Updates an observability subscriber details like subscription topics or enablement status (Status) to enable or disable from listening to data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  


# **create**
> create(opts)

Adds consumer for subscribing to observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityConsumersApi.new
opts = {
  request_body: Appliance::ApplianceObservabilityConsumersCreateSpec.new # ApplianceObservabilityConsumersCreateSpec | 
}

begin
  #Adds consumer for subscribing to observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityConsumersApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **ApplianceObservabilityConsumersCreateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(name)

Removes the consumer from observability data subscription. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityConsumersApi.new
name = 'name_example' # String | Identifier of the consumer to be removed. The parameter must be an identifier for the resource type: appliance.observability.consumer.

begin
  #Removes the consumer from observability data subscription. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.delete(name)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityConsumersApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the consumer to be removed. The parameter must be an identifier for the resource type: appliance.observability.consumer. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> ApplianceObservabilityConsumersInfo get(name)

Gets subscription enable status and subscribed topics of particular consumer. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityConsumersApi.new
name = 'name_example' # String | Identifier of the consumer for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.consumer.

begin
  #Gets subscription enable status and subscribed topics of particular consumer. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.get(name)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityConsumersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the consumer for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.consumer. | 

### Return type

[**ApplianceObservabilityConsumersInfo**](ApplianceObservabilityConsumersInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;ApplianceObservabilityConsumersSummary&gt; list

Lists all the subscribed consumers for Observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityConsumersApi.new

begin
  #Lists all the subscribed consumers for Observability data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityConsumersApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApplianceObservabilityConsumersSummary&gt;**](ApplianceObservabilityConsumersSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(name, opts)

Updates an observability subscriber details like subscription topics or enablement status (Status) to enable or disable from listening to data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityConsumersApi.new
name = 'name_example' # String | Identifier of the consumer to be updated. The parameter must be an identifier for the resource type: appliance.observability.consumer.
opts = {
  request_body: Appliance::ApplianceObservabilityConsumersUpdateSpec.new # ApplianceObservabilityConsumersUpdateSpec | 
}

begin
  #Updates an observability subscriber details like subscription topics or enablement status (Status) to enable or disable from listening to data stream. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.update(name, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityConsumersApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Identifier of the consumer to be updated. The parameter must be an identifier for the resource type: appliance.observability.consumer. | 
 **request_body** | **ApplianceObservabilityConsumersUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



