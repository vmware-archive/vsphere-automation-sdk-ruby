# VSphereAutomation::VCenter::HostFeaturesTechPreviewApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HostFeaturesTechPreviewApi.md#get) | **GET** /rest/vcenter/host/{host}/features/tech-preview | Returns the current status of the feature switches in Tech Preview mode for the feature names in the input set. If the input set is empty, returns the status of all the features. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](HostFeaturesTechPreviewApi.md#update) | **PATCH** /rest/vcenter/host/{host}/features/tech-preview | Sets the status to enabled/disabled for the Tech Preview feature switches passed in the input map. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterHostFeaturesTechPreviewResp get(host, opts)

Returns the current status of the feature switches in Tech Preview mode for the feature names in the input set. If the input set is empty, returns the status of all the features. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::HostFeaturesTechPreviewApi.new
host = 'host_example' # String | Identifier for the host from which Tech Preview information will be retrieved. The parameter must be an identifier for the resource type: HostSystem.
opts = {
  features: ['features_example'] # Array<String> | Features for which status is to be retrieved. If unset, the status of all Tech Preview feature switches will be returned.
}

begin
  #Returns the current status of the feature switches in Tech Preview mode for the feature names in the input set. If the input set is empty, returns the status of all the features. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(host, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostFeaturesTechPreviewApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier for the host from which Tech Preview information will be retrieved. The parameter must be an identifier for the resource type: HostSystem. | 
 **features** | [**Array&lt;String&gt;**](String.md)| Features for which status is to be retrieved. If unset, the status of all Tech Preview feature switches will be returned. | [optional] 

### Return type

[**VcenterHostFeaturesTechPreviewResp**](VcenterHostFeaturesTechPreviewResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(host, request_body)

Sets the status to enabled/disabled for the Tech Preview feature switches passed in the input map. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::HostFeaturesTechPreviewApi.new
host = 'host_example' # String | Identifier for the host on which Tech Preview information will be set. The parameter must be an identifier for the resource type: HostSystem.
request_body = VCenter::VcenterHostFeaturesTechPreviewUpdate.new # VcenterHostFeaturesTechPreviewUpdate | 

begin
  #Sets the status to enabled/disabled for the Tech Preview feature switches passed in the input map. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(host, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HostFeaturesTechPreviewApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**| Identifier for the host on which Tech Preview information will be set. The parameter must be an identifier for the resource type: HostSystem. | 
 **request_body** | [**VcenterHostFeaturesTechPreviewUpdate**](VcenterHostFeaturesTechPreviewUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



