# VSphereAutomation::VStats::CounterMetadataApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](CounterMetadataApi.md#get) | **GET** /api/stats/counters/{cid}/metadata/{mid} | Returns information about a specific CounterMetadata. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**get_default**](CounterMetadataApi.md#get_default) | **GET** /api/stats/counters/{cid}/metadata/default | This operation returns the \&quot;default\&quot; CounterMetadata. A Counter has at least one related metadata object. Usually, stats providers (for example hosts) are in agreement about the default metadata. In this case the returned list has a single metadata object.   Sometimes, when providers are in \&quot;disagreement\&quot; about the default, then the returned list would include all the possible \&quot;defaults\&quot;. This potential ambiguity isn&#39;t a real issue because consumers of the vStats API rarely need to specify the \&quot;mid\&quot; of metadata. Therefore, this API is used primarily for informational purposes. . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**list**](CounterMetadataApi.md#list) | **GET** /api/stats/counters/{cid}/metadata | Returns information about all counter metadata records for a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **get**
> VstatsCounterMetadataInfo get(cid, mid)

Returns information about a specific CounterMetadata. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::CounterMetadataApi.new
cid = 'cid_example' # String | Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
mid = 'mid_example' # String | CounterMetadata ID. The parameter must be an identifier for the resource type: vstats.model.CounterMetadata.

begin
  #Returns information about a specific CounterMetadata. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.get(cid, mid)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CounterMetadataApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter. | 
 **mid** | **String**| CounterMetadata ID. The parameter must be an identifier for the resource type: vstats.model.CounterMetadata. | 

### Return type

[**VstatsCounterMetadataInfo**](VstatsCounterMetadataInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_default**
> Array&lt;VstatsCounterMetadataInfo&gt; get_default(cid)

This operation returns the \"default\" CounterMetadata. A Counter has at least one related metadata object. Usually, stats providers (for example hosts) are in agreement about the default metadata. In this case the returned list has a single metadata object.   Sometimes, when providers are in \"disagreement\" about the default, then the returned list would include all the possible \"defaults\". This potential ambiguity isn't a real issue because consumers of the vStats API rarely need to specify the \"mid\" of metadata. Therefore, this API is used primarily for informational purposes. . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::CounterMetadataApi.new
cid = 'cid_example' # String | Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.

begin
  #This operation returns the \"default\" CounterMetadata. A Counter has at least one related metadata object. Usually, stats providers (for example hosts) are in agreement about the default metadata. In this case the returned list has a single metadata object.   Sometimes, when providers are in \"disagreement\" about the default, then the returned list would include all the possible \"defaults\". This potential ambiguity isn't a real issue because consumers of the vStats API rarely need to specify the \"mid\" of metadata. Therefore, this API is used primarily for informational purposes. . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.get_default(cid)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CounterMetadataApi->get_default: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter. | 

### Return type

[**Array&lt;VstatsCounterMetadataInfo&gt;**](VstatsCounterMetadataInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VstatsCounterMetadataInfo&gt; list(cid, opts)

Returns information about all counter metadata records for a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::CounterMetadataApi.new
cid = 'cid_example' # String | Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
opts = {
  status: 'status_example' # String | Counter metadata status. Warning: This enumeration is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
}

begin
  #Returns information about all counter metadata records for a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.list(cid, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling CounterMetadataApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter. | 
 **status** | **String**| Counter metadata status. Warning: This enumeration is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | [optional] 

### Return type

[**Array&lt;VstatsCounterMetadataInfo&gt;**](VstatsCounterMetadataInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



