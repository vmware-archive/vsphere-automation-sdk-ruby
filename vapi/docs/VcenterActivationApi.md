# VSphereAutomation::VAPI::VcenterActivationApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](VcenterActivationApi.md#cancel) | **POST** /com/vmware/vapi/vcenter/activation/id:{activation_id}?~action&#x3D;cancel | Sends a request to cancel the task associated with the provided {@param.name activationId}.


# **cancel**
> cancel(activation_id)

Sends a request to cancel the task associated with the provided {@param.name activationId}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::VcenterActivationApi.new
activation_id = 'activation_id_example' # String | the {@param.name activationId} associated with a vCenter Server task to be canceled.

begin
  #Sends a request to cancel the task associated with the provided {@param.name activationId}.
  api_instance.cancel(activation_id)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VcenterActivationApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activation_id** | **String**| the {@param.name activationId} associated with a vCenter Server task to be canceled. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



