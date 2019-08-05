# VSphereAutomation::VCenter::VchaOperationsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VchaOperationsApi.md#get) | **GET** /vcenter/vcha/operations | Retrieves the current active and disabled operations of a VCHA cluster.


# **get**
> VcenterVchaOperationsResult get

Retrieves the current active and disabled operations of a VCHA cluster.

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

api_instance = VSphereAutomation::VCenter::VchaOperationsApi.new

begin
  #Retrieves the current active and disabled operations of a VCHA cluster.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaOperationsApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterVchaOperationsResult**](VcenterVchaOperationsResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



