# VSphereAutomation::VCenter::VmGuestNetworkingRoutesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](VmGuestNetworkingRoutesApi.md#list) | **GET** /rest/vcenter/vm/{vm}/guest/networking/routes | Returns information about network routing in the guest operating system.


# **list**
> VcenterVmGuestNetworkingRoutesListResp list(vm)

Returns information about network routing in the guest operating system.

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

api_instance = VSphereAutomation::VCenter::VmGuestNetworkingRoutesApi.new
vm = 'vm_example' # String | Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns information about network routing in the guest operating system.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestNetworkingRoutesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestNetworkingRoutesListResp**](VcenterVmGuestNetworkingRoutesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



