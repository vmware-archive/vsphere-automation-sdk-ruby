# VSphereAutomation::VAPI::RestNavigationRootApi

All URIs are relative to *http://localhost/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationRootApi.md#get) | **GET** /com/vmware/vapi/rest/navigation/root | Retrieves information about a vAPI REST {@link Root}.


# **get**
> VapiRestNavigationRootResult get

Retrieves information about a vAPI REST {@link Root}.

### Example
```ruby
# load the gem
require 'vsphere-automation-vapi'

api_instance = VSphereAutomation::VAPI::RestNavigationRootApi.new

begin
  #Retrieves information about a vAPI REST {@link Root}.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationRootApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VapiRestNavigationRootResult**](VapiRestNavigationRootResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



