# VSphereAutomation::VStats::DataApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query_data_points**](DataApi.md#query_data_points) | **GET** /api/stats/data/dp | Returns Data.DataPointsResult matching the filter parameters.   /vstats/data/dp?types&#x3D;VM&amp;types&#x3D;VCPU    /vstats/data/dp?rsrcs&#x3D;type.HOST&#x3D;host-16&amp;rsrcs&#x3D;type.VM&#x3D;vm-31 . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **query_data_points**
> VstatsDataDataPointsResult query_data_points(opts)

Returns Data.DataPointsResult matching the filter parameters.   /vstats/data/dp?types=VM&types=VCPU    /vstats/data/dp?rsrcs=type.HOST=host-16&rsrcs=type.VM=vm-31 . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

### Example
```ruby
# load the gem
require 'vsphere-automation-vstats'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VStats::DataApi.new
opts = {
  start: 56, # Integer | Start of a time window (included), timestamp in seconds UTC. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be limited by start time.
  _end: 56, # Integer | End of a time window (excluded), timestamp in seconds UTC. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be limited by end time.
  cid: 'cid_example', # String | Counter ID. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by counter. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter.
  metric: 'metric_example', # String | Metric name. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by metric name. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Metric. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Metric.
  types: ['types_example'], # Array<String> | List of Resource types. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by resource types. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType.
  resources: ['resources_example'], # Array<String> | Resources to include in the query. Each resource is specified through a composite string that follows the following format.   type.<resource type>[.<scheme>]=<resource id>    resource type specifies the type of resource for example VM, VCPU etc.    scheme is an optional element to disambiguate the resource as needed for example to differentiate managed object id from uuid.    resource id is the unique resource identifier value for example: vm-41    Example values include: type.VM=vm-41, type.VCPU=1, type.VM.moid=vm-41 . Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When left unset the result will not be filtered for specific resources.
  order: 'order_example', # String | Directs the server to order the returned data. Passing a value of DEFAULT will apply default ordering of the results that makes them easier for consumption. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When this parameter is unset the server will not order the result, save computational time and therefore the API will operate faster.
  page: 'page_example' # String | Used to retrieve paged data for larger result sets. The value of this token is generated by server and returned as next field in the result of Data.query-data-points operations. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the first page of results will be returned.
}

begin
  #Returns Data.DataPointsResult matching the filter parameters.   /vstats/data/dp?types=VM&types=VCPU    /vstats/data/dp?rsrcs=type.HOST=host-16&rsrcs=type.VM=vm-31 . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.query_data_points(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DataApi->query_data_points: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| Start of a time window (included), timestamp in seconds UTC. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be limited by start time. | [optional] 
 **_end** | **Integer**| End of a time window (excluded), timestamp in seconds UTC. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be limited by end time. | [optional] 
 **cid** | **String**| Counter ID. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by counter. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter. | [optional] 
 **metric** | **String**| Metric name. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by metric name. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Metric. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Metric. | [optional] 
 **types** | [**Array&lt;String&gt;**](String.md)| List of Resource types. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the result will not be filtered by resource types. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType. | [optional] 
 **resources** | [**Array&lt;String&gt;**](String.md)| Resources to include in the query. Each resource is specified through a composite string that follows the following format.   type.&lt;resource type&gt;[.&lt;scheme&gt;]&#x3D;&lt;resource id&gt;    resource type specifies the type of resource for example VM, VCPU etc.    scheme is an optional element to disambiguate the resource as needed for example to differentiate managed object id from uuid.    resource id is the unique resource identifier value for example: vm-41    Example values include: type.VM&#x3D;vm-41, type.VCPU&#x3D;1, type.VM.moid&#x3D;vm-41 . Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When left unset the result will not be filtered for specific resources. | [optional] 
 **order** | **String**| Directs the server to order the returned data. Passing a value of DEFAULT will apply default ordering of the results that makes them easier for consumption. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When this parameter is unset the server will not order the result, save computational time and therefore the API will operate faster. | [optional] 
 **page** | **String**| Used to retrieve paged data for larger result sets. The value of this token is generated by server and returned as next field in the result of Data.query-data-points operations. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset the first page of results will be returned. | [optional] 

### Return type

[**VstatsDataDataPointsResult**](VstatsDataDataPointsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



