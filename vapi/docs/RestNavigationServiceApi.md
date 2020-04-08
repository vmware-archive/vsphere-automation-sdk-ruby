# VSphereAutomation::VAPI::RestNavigationServiceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RestNavigationServiceApi.md#list) | **GET** /rest/com/vmware/vapi/rest/navigation/service | Gets list of all vAPI REST Services for a vAPI REST Component.


# **list**
> VapiRestNavigationServiceListResp list(component_id, opts)

Gets list of all vAPI REST Services for a vAPI REST Component.

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

api_instance = VSphereAutomation::VAPI::RestNavigationServiceApi.new
component_id = 'component_id_example' # String | Component identifier. The parameter must be an identifier for the resource type: vapi.component.
opts = {
  base_url: 'base_url_example' # String | Base URL. This parameter is used to produce absolute URLs. If the {param.name baseUrl} parameter is unset then this service will produce relative URLs.
}

begin
  #Gets list of all vAPI REST Services for a vAPI REST Component.
  result = api_instance.list(component_id, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationServiceApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Component identifier. The parameter must be an identifier for the resource type: vapi.component. | 
 **base_url** | **String**| Base URL. This parameter is used to produce absolute URLs. If the {param.name baseUrl} parameter is unset then this service will produce relative URLs. | [optional] 

### Return type

[**VapiRestNavigationServiceListResp**](VapiRestNavigationServiceListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



