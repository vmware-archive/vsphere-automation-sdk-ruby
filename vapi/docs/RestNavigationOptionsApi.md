# VSphereAutomation::VAPI::RestNavigationOptionsApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationOptionsApi.md#get) | **POST** /com/vmware/vapi/rest/navigation/options?~action&#x3D;get | Retrieves operations for specific URL.


# **get**
> VapiRestNavigationOptionsResult get(opts)

Retrieves operations for specific URL.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::RestNavigationOptionsApi.new
opts = {
  vapi_rest_navigation_options_get: VSphereAutomation::VapiRestNavigationOptionsGet.new # VapiRestNavigationOptionsGet | 
}

begin
  #Retrieves operations for specific URL.
  result = api_instance.get(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationOptionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vapi_rest_navigation_options_get** | [**VapiRestNavigationOptionsGet**](VapiRestNavigationOptionsGet.md)|  | [optional] 

### Return type

[**VapiRestNavigationOptionsResult**](VapiRestNavigationOptionsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



