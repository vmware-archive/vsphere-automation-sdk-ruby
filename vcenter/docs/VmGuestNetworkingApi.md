# VSphereAutomation::VCenter::VmGuestNetworkingApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestNetworkingApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/networking | Returns information about the network configuration in the guest operating system.


# **get**
> VcenterVmGuestNetworkingResp get(vm)

Returns information about the network configuration in the guest operating system.

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

api_instance = VSphereAutomation::VCenter::VmGuestNetworkingApi.new
vm = 'vm_example' # String | Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns information about the network configuration in the guest operating system.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestNetworkingApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestNetworkingResp**](VcenterVmGuestNetworkingResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



