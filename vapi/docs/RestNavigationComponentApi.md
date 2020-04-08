# VSphereAutomation::VAPI::RestNavigationComponentApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RestNavigationComponentApi.md#list) | **GET** /rest/com/vmware/vapi/rest/navigation/component | Gets list of all vAPI REST Components.


# **list**
> VapiRestNavigationComponentListResp list(opts)

Gets list of all vAPI REST Components.

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

api_instance = VSphereAutomation::VAPI::RestNavigationComponentApi.new
opts = {
  base_url: 'base_url_example' # String | Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
}

begin
  #Gets list of all vAPI REST Components.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationComponentApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **base_url** | **String**| Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs. | [optional] 

### Return type

[**VapiRestNavigationComponentListResp**](VapiRestNavigationComponentListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



