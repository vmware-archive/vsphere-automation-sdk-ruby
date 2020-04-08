# VSphereAutomation::VCenter::SystemConfigFeaturesTechPreviewApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemConfigFeaturesTechPreviewApi.md#get) | **GET** /rest/vcenter/system-config/features/tech-preview | Returns the current status of all the feature switches in Tech Preview. mode. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**update**](SystemConfigFeaturesTechPreviewApi.md#update) | **PATCH** /rest/vcenter/system-config/features/tech-preview | Sets the status to enabled/disabled for the Tech Preview feature switches present in the input {@term map}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **get**
> VcenterSystemConfigFeaturesTechPreviewResp get(opts)

Returns the current status of all the feature switches in Tech Preview. mode. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SystemConfigFeaturesTechPreviewApi.new
opts = {
  features: ['features_example'] # Array<String> | Features for which status is to be retrieved.
}

begin
  #Returns the current status of all the feature switches in Tech Preview. mode. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigFeaturesTechPreviewApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **features** | [**Array&lt;String&gt;**](String.md)| Features for which status is to be retrieved. | [optional] 

### Return type

[**VcenterSystemConfigFeaturesTechPreviewResp**](VcenterSystemConfigFeaturesTechPreviewResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(request_body)

Sets the status to enabled/disabled for the Tech Preview feature switches present in the input {@term map}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SystemConfigFeaturesTechPreviewApi.new
request_body = VCenter::VcenterSystemConfigFeaturesTechPreviewUpdate.new # VcenterSystemConfigFeaturesTechPreviewUpdate | 

begin
  #Sets the status to enabled/disabled for the Tech Preview feature switches present in the input {@term map}. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.update(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigFeaturesTechPreviewApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSystemConfigFeaturesTechPreviewUpdate**](VcenterSystemConfigFeaturesTechPreviewUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



