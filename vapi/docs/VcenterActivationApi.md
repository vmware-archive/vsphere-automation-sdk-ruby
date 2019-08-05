# VSphereAutomation::VAPI::VcenterActivationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](VcenterActivationApi.md#cancel) | **POST** /com/vmware/vapi/vcenter/activation/id:{activation_id} | Sends a request to cancel the task associated with the provided {@param.name activationId}.


# **cancel**
> cancel(activation_id, action)

Sends a request to cancel the task associated with the provided {@param.name activationId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VAPI::VcenterActivationApi.new
activation_id = 'activation_id_example' # String | the {@param.name activationId} associated with a vCenter Server task to be canceled.
action = 'action_example' # String | ~action=cancel

begin
  #Sends a request to cancel the task associated with the provided {@param.name activationId}.
  api_instance.cancel(activation_id, action)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VcenterActivationApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activation_id** | **String**| the {@param.name activationId} associated with a vCenter Server task to be canceled. | 
 **action** | **String**| ~action&#x3D;cancel | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



