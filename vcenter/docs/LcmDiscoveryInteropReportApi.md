# VSphereAutomation::VCenter::LcmDiscoveryInteropReportApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](LcmDiscoveryInteropReportApi.md#create_task) | **POST** /api/vcenter/lcm/discovery/interop-report?vmw-task&#x3D;true | Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 


# **create_task**
> String create_task(opts)

Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 

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

api_instance = VSphereAutomation::VCenter::LcmDiscoveryInteropReportApi.new
opts = {
  request_body: VCenter::VcenterLcmDiscoveryInteropReportSpec.new # VcenterLcmDiscoveryInteropReportSpec | 
}

begin
  #Creates interoperability report between a vCenter Server release version and all registered products with the vCenter Server instance.   The result of this operation can be queried by calling the cis.Tasks#get operation where task is the response of this operation. 
  result = api_instance.create_task(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmDiscoveryInteropReportApi->create_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterLcmDiscoveryInteropReportSpec**|  | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



