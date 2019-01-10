# VSphereAutomation::VCenter::VchaCapabilitiesApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VchaCapabilitiesApi.md#get) | **GET** /vcenter/vcha/capabilities | Gets the capabilities of the active node of a VCHA cluster.


# **get**
> VcenterVchaCapabilitiesResult get

Gets the capabilities of the active node of a VCHA cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VchaCapabilitiesApi.new

begin
  #Gets the capabilities of the active node of a VCHA cluster.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaCapabilitiesApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterVchaCapabilitiesResult**](VcenterVchaCapabilitiesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



