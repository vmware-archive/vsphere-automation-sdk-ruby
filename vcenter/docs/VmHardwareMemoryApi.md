# VSphereAutomation::VCenter::VmHardwareMemoryApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmHardwareMemoryApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/memory | Returns the memory-related settings of a virtual machine.
[**update**](VmHardwareMemoryApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/memory | Updates the memory-related settings of a virtual machine.


# **get**
> VcenterVmHardwareMemoryResult get(vm)

Returns the memory-related settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareMemoryApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the memory-related settings of a virtual machine.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareMemoryApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareMemoryResult**](VcenterVmHardwareMemoryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, vcenter_vm_hardware_memory_update)

Updates the memory-related settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareMemoryApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_memory_update = VSphereAutomation::VcenterVmHardwareMemoryUpdate.new # VcenterVmHardwareMemoryUpdate | 

begin
  #Updates the memory-related settings of a virtual machine.
  api_instance.update(vm, vcenter_vm_hardware_memory_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareMemoryApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_memory_update** | [**VcenterVmHardwareMemoryUpdate**](VcenterVmHardwareMemoryUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



