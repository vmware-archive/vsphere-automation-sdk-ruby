# VSphereAutomation::VCenter::ContentRegistriesHealthApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ContentRegistriesHealthApi.md#get) | **GET** /rest/vcenter/content/registries/{registry}/health | Returns the health information of a container registry in the vCenter.


# **get**
> VcenterContentRegistriesHealthResp get(registry)

Returns the health information of a container registry in the vCenter.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::ContentRegistriesHealthApi.new
registry = 'registry_example' # String | Identifier of the registry.

begin
  #Returns the health information of a container registry in the vCenter.
  result = api_instance.get(registry)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ContentRegistriesHealthApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registry** | **String**| Identifier of the registry. | 

### Return type

[**VcenterContentRegistriesHealthResp**](VcenterContentRegistriesHealthResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



