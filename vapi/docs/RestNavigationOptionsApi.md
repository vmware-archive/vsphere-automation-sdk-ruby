# VSphereAutomation::VAPI::RestNavigationOptionsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationOptionsApi.md#get) | **POST** /com/vmware/vapi/rest/navigation/options?~action&#x3D;get | Retrieves operations for specific URL.


# **get**
> VapiRestNavigationOptionsResult get(request_body)

Retrieves operations for specific URL.

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

api_instance = VSphereAutomation::VAPI::RestNavigationOptionsApi.new
request_body = VAPI::VapiRestNavigationOptionsGet.new # VapiRestNavigationOptionsGet | 

begin
  #Retrieves operations for specific URL.
  result = api_instance.get(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationOptionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VapiRestNavigationOptionsGet**](VapiRestNavigationOptionsGet.md)|  | 

### Return type

[**VapiRestNavigationOptionsResult**](VapiRestNavigationOptionsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



