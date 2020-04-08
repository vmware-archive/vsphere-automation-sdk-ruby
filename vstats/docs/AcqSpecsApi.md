# VSphereAutomation::VStats::AcqSpecsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](AcqSpecsApi.md#create) | **POST** /api/stats/acq-specs | Create a new acquisition specification record. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**delete**](AcqSpecsApi.md#delete) | **DELETE** /api/stats/acq-specs/{id} | Delete an acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**get**](AcqSpecsApi.md#get) | **GET** /api/stats/acq-specs/{id} | Returns information about a specific acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**list**](AcqSpecsApi.md#list) | **GET** /api/stats/acq-specs | Returns information about all acquisition specifications. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
[**update**](AcqSpecsApi.md#update) | **PATCH** /api/stats/acq-specs/{id} | Update an existing acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **create**
> String create(opts)

Create a new acquisition specification record. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::AcqSpecsApi.new
opts = {
  request_body: VStats::VstatsAcqSpecsCreateSpec.new # VstatsAcqSpecsCreateSpec | 
}

begin
  #Create a new acquisition specification record. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AcqSpecsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VstatsAcqSpecsCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(id)

Delete an acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::AcqSpecsApi.new
id = 'id_example' # String | Acquisition specification ID. The parameter must be an identifier for the resource type: vstats.model.AcqSpec.

begin
  #Delete an acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  api_instance.delete(id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AcqSpecsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Acquisition specification ID. The parameter must be an identifier for the resource type: vstats.model.AcqSpec. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VstatsAcqSpecsInfo get(id)

Returns information about a specific acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::AcqSpecsApi.new
id = 'id_example' # String | Acquisition specification ID. The parameter must be an identifier for the resource type: vstats.model.AcqSpec.

begin
  #Returns information about a specific acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.get(id)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AcqSpecsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Acquisition specification ID. The parameter must be an identifier for the resource type: vstats.model.AcqSpec. | 

### Return type

[**VstatsAcqSpecsInfo**](VstatsAcqSpecsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VstatsAcqSpecsListResult list(opts)

Returns information about all acquisition specifications. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::AcqSpecsApi.new
opts = {
  page: 'page_example', # String | Used to retrieve paged data for larger result sets. The value of this token is generated by server and returned as next field in the result of AcqSpecs.list operations. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. unset the first page of results will be returned.
  endpoints: ['endpoints_example'], # Array<String> | Endpoint filter which is based on endpoints configured to acquisition specifications. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by endpoints configured. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.AcqSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.AcqSpec.
  status: 'status_example' # String | Describes the status of an Acquisition Specification. Warning: This enumeration is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
}

begin
  #Returns information about all acquisition specifications. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AcqSpecsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **String**| Used to retrieve paged data for larger result sets. The value of this token is generated by server and returned as next field in the result of AcqSpecs.list operations. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. unset the first page of results will be returned. | [optional] 
 **endpoints** | [**Array&lt;String&gt;**](String.md)| Endpoint filter which is based on endpoints configured to acquisition specifications. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by endpoints configured. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vstats.model.AcqSpec. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vstats.model.AcqSpec. | [optional] 
 **status** | **String**| Describes the status of an Acquisition Specification. Warning: This enumeration is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | [optional] 

### Return type

[**VstatsAcqSpecsListResult**](VstatsAcqSpecsListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(id, opts)

Update an existing acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

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

api_instance = VSphereAutomation::VStats::AcqSpecsApi.new
id = 'id_example' # String | Acquisition specification ID. The parameter must be an identifier for the resource type: vstats.model.AcqSpec.
opts = {
  request_body: VStats::VstatsAcqSpecsUpdateSpec.new # VstatsAcqSpecsUpdateSpec | 
}

begin
  #Update an existing acquisition specification. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  api_instance.update(id, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AcqSpecsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Acquisition specification ID. The parameter must be an identifier for the resource type: vstats.model.AcqSpec. | 
 **request_body** | **VstatsAcqSpecsUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



