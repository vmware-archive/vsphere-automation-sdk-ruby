# VSphereAutomation::Appliance::ObservabilityDefaultMetricsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ObservabilityDefaultMetricsApi.md#get) | **GET** /api/appliance/observability/default-metrics/{metric} | Gets detailed info about the metric. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**list**](ObservabilityDefaultMetricsApi.md#list) | **GET** /api/appliance/observability/default-metrics | Lists all the default metrics currently collected and published by cloud observability along with their enablement status. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
[**update**](ObservabilityDefaultMetricsApi.md#update) | **PATCH** /api/appliance/observability/default-metrics/{metric} | Updates metric status to enable or disable. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  


# **get**
> ApplianceObservabilityDefaultMetricsInfo get(metric)

Gets detailed info about the metric. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityDefaultMetricsApi.new
metric = 'metric_example' # String | Identifier of the metric for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.metric.

begin
  #Gets detailed info about the metric. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.get(metric)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityDefaultMetricsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | **String**| Identifier of the metric for which information will be returned. The parameter must be an identifier for the resource type: appliance.observability.metric. | 

### Return type

[**ApplianceObservabilityDefaultMetricsInfo**](ApplianceObservabilityDefaultMetricsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;ApplianceObservabilityDefaultMetricsSummary&gt; list

Lists all the default metrics currently collected and published by cloud observability along with their enablement status. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityDefaultMetricsApi.new

begin
  #Lists all the default metrics currently collected and published by cloud observability along with their enablement status. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityDefaultMetricsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ApplianceObservabilityDefaultMetricsSummary&gt;**](ApplianceObservabilityDefaultMetricsSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(metric, status)

Updates metric status to enable or disable. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  

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

api_instance = VSphereAutomation::Appliance::ObservabilityDefaultMetricsApi.new
metric = 'metric_example' # String | Identifier of the metric for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.metric.
status = 'status_example' # String | The DefaultMetrics.Status enumerated type defines the enablement status of DefaultMetrics. Note: This enumeration is restricted for VMware internal use only.

begin
  #Updates metric status to enable or disable. if you do not have all of the privileges described as follows:     -  Operation execution requires Observability.Admin.  
  api_instance.update(metric, status)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ObservabilityDefaultMetricsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | **String**| Identifier of the metric for which status (Status) to be updated. The parameter must be an identifier for the resource type: appliance.observability.metric. | 
 **status** | **String**| The DefaultMetrics.Status enumerated type defines the enablement status of DefaultMetrics. Note: This enumeration is restricted for VMware internal use only. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



