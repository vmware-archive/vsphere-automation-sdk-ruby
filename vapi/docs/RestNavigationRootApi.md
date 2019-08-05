# VSphereAutomation::VAPI::RestNavigationRootApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](RestNavigationRootApi.md#get) | **GET** /com/vmware/vapi/rest/navigation/root | Retrieves information about a vAPI REST {@link Root}.


# **get**
> VapiRestNavigationRootResult get(opts)

Retrieves information about a vAPI REST {@link Root}.

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
  base_url: 'base_url_example' # String | Base URL.
}

begin
  #Retrieves information about a vAPI REST {@link Root}.
  result = api_instance.get(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RestNavigationRootApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **base_url** | **String**| Base URL. | [optional] 

### Return type

[**VapiRestNavigationRootResult**](VapiRestNavigationRootResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



