# VSphereAutomation::VAPI::RestNavigationServiceApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RestNavigationServiceApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/service | Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.


# **list**
> VapiRestNavigationServiceListResult list

Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::RestNavigationServiceApi.new

begin
  #Gets list of all vAPI REST {@link Service}s for a vAPI REST {@link Component}.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationServiceApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiRestNavigationServiceListResult**](VapiRestNavigationServiceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



