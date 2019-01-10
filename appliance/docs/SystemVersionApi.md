# VSphereAutomation::Appliance::SystemVersionApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](SystemVersionApi.md#get) | **GET** /appliance/system/version | Get the version.


# **get**
> ApplianceSystemVersionResult get

Get the version.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::SystemVersionApi.new

begin
  #Get the version.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemVersionApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceSystemVersionResult**](ApplianceSystemVersionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



