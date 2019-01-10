# VSphereAutomation::Appliance::MonitoringApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](MonitoringApi.md#get) | **GET** /appliance/monitoring/{stat_id} | Get monitored item info
[**list**](MonitoringApi.md#list) | **GET** /appliance/monitoring | Get monitored items list
[**query**](MonitoringApi.md#query) | **GET** /appliance/monitoring/query | Get monitoring data.


# **get**
> ApplianceMonitoringResult get(stat_id)

Get monitored item info

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::MonitoringApi.new
stat_id = 'stat_id_example' # String | statistic item id

begin
  #Get monitored item info
  result = api_instance.get(stat_id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MonitoringApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **String**| statistic item id | 

### Return type

[**ApplianceMonitoringResult**](ApplianceMonitoringResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> ApplianceMonitoringListResult list

Get monitored items list

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::MonitoringApi.new

begin
  #Get monitored items list
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MonitoringApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceMonitoringListResult**](ApplianceMonitoringListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **query**
> ApplianceMonitoringQueryResult query(item_names, item_interval, item_function, item_start_time, item_end_time)

Get monitoring data.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::MonitoringApi.new
item_names = ['item_names_example'] # Array<String> | monitored item IDs Ex: CPU, MEMORY
item_interval = 'item_interval_example' # String | {@name IntervalType} {@term enumerated type} Defines interval between the values in hours and mins,                    for which aggregation will apply
item_function = 'item_function_example' # String | {@name FunctionType} {@term enumerated type} Defines aggregation function
item_start_time = 'item_start_time_example' # String | Start time in UTC
item_end_time = 'item_end_time_example' # String | End time in UTC

begin
  #Get monitoring data.
  result = api_instance.query(item_names, item_interval, item_function, item_start_time, item_end_time)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling MonitoringApi->query: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_names** | [**Array&lt;String&gt;**](String.md)| monitored item IDs Ex: CPU, MEMORY | 
 **item_interval** | **String**| {@name IntervalType} {@term enumerated type} Defines interval between the values in hours and mins,                    for which aggregation will apply | 
 **item_function** | **String**| {@name FunctionType} {@term enumerated type} Defines aggregation function | 
 **item_start_time** | **String**| Start time in UTC | 
 **item_end_time** | **String**| End time in UTC | 

### Return type

[**ApplianceMonitoringQueryResult**](ApplianceMonitoringQueryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



