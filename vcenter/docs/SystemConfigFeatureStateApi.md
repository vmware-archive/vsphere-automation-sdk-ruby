# VSphereAutomation::VCenter::SystemConfigFeatureStateApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemConfigFeatureStateApi.md#get) | **GET** /rest/vcenter/system-config/feature-state | Returns the current status of feature state switches.


# **get**
> VcenterSystemConfigFeatureStateResp get(opts)

Returns the current status of feature state switches.

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

api_instance = VSphereAutomation::VCenter::SystemConfigFeatureStateApi.new
opts = {
  features: ['features_example'] # Array<String> | List of features for which status is to be retrieved.
}

begin
  #Returns the current status of feature state switches.
  result = api_instance.get(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemConfigFeatureStateApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **features** | [**Array&lt;String&gt;**](String.md)| List of features for which status is to be retrieved. | [optional] 

### Return type

[**VcenterSystemConfigFeatureStateResp**](VcenterSystemConfigFeatureStateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



