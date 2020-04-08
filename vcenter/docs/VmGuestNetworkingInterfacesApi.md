# VSphereAutomation::VCenter::VmGuestNetworkingInterfacesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](VmGuestNetworkingInterfacesApi.md#list) | **GET** /rest/vcenter/vm/{vm}/guest/networking/interfaces | Returns information about the networking interfaces in the guest operating system.


# **list**
> VcenterVmGuestNetworkingInterfacesListResp list(vm)

Returns information about the networking interfaces in the guest operating system.

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

api_instance = VSphereAutomation::VCenter::VmGuestNetworkingInterfacesApi.new
vm = 'vm_example' # String | Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns information about the networking interfaces in the guest operating system.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestNetworkingInterfacesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine ID The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestNetworkingInterfacesListResp**](VcenterVmGuestNetworkingInterfacesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



