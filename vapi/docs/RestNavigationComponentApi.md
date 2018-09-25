# VSphereAutomation::VAPI::RestNavigationComponentApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RestNavigationComponentApi.md#list) | **GET** /com/vmware/vapi/rest/navigation/component | Gets list of all vAPI REST {@link Component}s.


# **list**
> VapiRestNavigationComponentListResult list

Gets list of all vAPI REST {@link Component}s.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::RestNavigationComponentApi.new

begin
  #Gets list of all vAPI REST {@link Component}s.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationComponentApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiRestNavigationComponentListResult**](VapiRestNavigationComponentListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



