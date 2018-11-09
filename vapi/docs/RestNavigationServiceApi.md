# VSphereAutomation::VAPI::RestNavigationServiceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RestNavigationServiceApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/service | Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.


# **list**
> VapiRestNavigationServiceListResult list(component_id, opts)

Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::RestNavigationServiceApi.new
component_id = 'component_id_example' # String | Component identifier.
opts = {
  base_url: 'base_url_example' # String | Base URL.
}

begin
  #Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.
  result = api_instance.list(component_id, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationServiceApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **String**| Component identifier. | 
 **base_url** | **String**| Base URL. | [optional] 

### Return type

[**VapiRestNavigationServiceListResult**](VapiRestNavigationServiceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



