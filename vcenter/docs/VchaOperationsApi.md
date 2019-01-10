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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



