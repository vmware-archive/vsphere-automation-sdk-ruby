# VSphereAutomation::VCenter::VmGuestLocalFilesystemApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestLocalFilesystemApi.md#get) | **GET** /vcenter/vm/{vm}/guest/local-filesystem | Returns details of the local file systems in the guest operating system.


# **get**
> VcenterVmGuestLocalFilesystemResult get(vm)

Returns details of the local file systems in the guest operating system.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmGuestLocalFilesystemApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns details of the local file systems in the guest operating system.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestLocalFilesystemApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestLocalFilesystemResult**](VcenterVmGuestLocalFilesystemResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



