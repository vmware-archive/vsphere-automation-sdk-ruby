# VSphereAutomation::VStats::CountersApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](CountersApi.md#get) | **GET** /api/stats/counters/{cid} | Returns information about a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**list**](CountersApi.md#list) | **GET** /api/stats/counters | Returns information about all counters matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **get**
> VstatsCountersInfo get(cid)

Returns information about a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::CountersApi.new
cid = 'cid_example' # String | Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.

begin
  #Returns information about a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.get(cid)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CountersApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter. | 

### Return type

[**VstatsCountersInfo**](VstatsCountersInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VstatsCountersInfo&gt; list(opts)

Returns information about all counters matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::CountersApi.new
opts = {
  cid: 'cid_example', # String | Counter identifier that will be listed. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset counter filter will not be applied. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter.
  types: ['types_example'], # Array<String> | Resource type filter. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset resource type filter will not be applied. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType.
  metric: 'metric_example' # String | Metric for which counters will be listed. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset metric filter will not be applied. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Metric. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Metric.
}

begin
  #Returns information about all counters matching the filter parameters. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CountersApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Counter identifier that will be listed. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset counter filter will not be applied. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Counter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Counter. | [optional] 
 **types** | [**Array&lt;String&gt;**](String.md)| Resource type filter. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset resource type filter will not be applied. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.RsrcType. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.RsrcType. | [optional] 
 **metric** | **String**| Metric for which counters will be listed. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. If unset metric filter will not be applied. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vstats.model.Metric. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vstats.model.Metric. | [optional] 

### Return type

[**Array&lt;VstatsCountersInfo&gt;**](VstatsCountersInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



