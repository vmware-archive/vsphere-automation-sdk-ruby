# VSphereAutomation::VStats::EndpointsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](EndpointsApi.md#create) | **POST** /api/stats/endpoints | Creates a new endpoint record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](EndpointsApi.md#delete) | **DELETE** /api/stats/endpoints | Deletes multiple endpoint configurations based on epids. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](EndpointsApi.md#list) | **GET** /api/stats/endpoints | Returns information about all the endpoints configured with vStats. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](EndpointsApi.md#update) | **PATCH** /api/stats/endpoints/{id} | Updates an existing endpoint configuration. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> String create(opts)

Creates a new endpoint record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VStats::EndpointsApi.new
opts = {
  request_body: VStats::VstatsEndpointsCreateSpec.new # VstatsEndpointsCreateSpec | 
}

begin
  #Creates a new endpoint record. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling EndpointsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VstatsEndpointsCreateSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(epids)

Deletes multiple endpoint configurations based on epids. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VStats::EndpointsApi.new
epids = ['epids_example'] # Array<String> | Endpoint IDs. The parameter must contain identifiers for the resource type: vstats.model.Endpoint.

begin
  #Deletes multiple endpoint configurations based on epids. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(epids)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling EndpointsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **epids** | [**Array&lt;String&gt;**](String.md)| Endpoint IDs. The parameter must contain identifiers for the resource type: vstats.model.Endpoint. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;VstatsEndpointsInfo&gt; list(opts)

Returns information about all the endpoints configured with vStats. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VStats::EndpointsApi.new
opts = {
  name: 'name_example', # String | Endpoint name filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by endpoint name.
  push_data_format: 'push_data_format_example', # String | Push data format filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by push data format.
  status: 'status_example' # String | Endpoint status filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by endpoint status.
}

begin
  #Returns information about all the endpoints configured with vStats. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling EndpointsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Endpoint name filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by endpoint name. | [optional] 
 **push_data_format** | **String**| Push data format filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by push data format. | [optional] 
 **status** | **String**| Endpoint status filter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When unset the result will not be filtered by endpoint status. | [optional] 

### Return type

[**Array&lt;VstatsEndpointsInfo&gt;**](VstatsEndpointsInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(id, opts)

Updates an existing endpoint configuration. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VStats::EndpointsApi.new
id = 'id_example' # String | Endpoint ID. The parameter must be an identifier for the resource type: vstats.model.Endpoint.
opts = {
  request_body: VStats::VstatsEndpointsUpdateSpec.new # VstatsEndpointsUpdateSpec | 
}

begin
  #Updates an existing endpoint configuration. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(id, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling EndpointsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Endpoint ID. The parameter must be an identifier for the resource type: vstats.model.Endpoint. | 
 **request_body** | **VstatsEndpointsUpdateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



