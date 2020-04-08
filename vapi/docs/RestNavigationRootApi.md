# VSphereAutomation::VAPI::RestNavigationRootApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationRootApi.md#get) | **GET** /rest/com/vmware/vapi/rest/navigation/root | Retrieves information about a vAPI REST Root.


# **get**
> VapiRestNavigationRootResp get(opts)

Retrieves information about a vAPI REST Root.

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

api_instance = VSphereAutomation::VAPI::RestNavigationRootApi.new
opts = {
  base_url: 'base_url_example' # String | Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
}

begin
  #Retrieves information about a vAPI REST Root.
  result = api_instance.get(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationRootApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **base_url** | **String**| Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs. | [optional] 

### Return type

[**VapiRestNavigationRootResp**](VapiRestNavigationRootResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



