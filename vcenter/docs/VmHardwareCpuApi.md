# VSphereAutomation::VCenter::VmHardwareCpuApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmHardwareCpuApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/cpu | Returns the CPU-related settings of a virtual machine.
[**update**](VmHardwareCpuApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/cpu | Updates the CPU-related settings of a virtual machine.


# **get**
> VcenterVmHardwareCpuResult get(vm)

Returns the CPU-related settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareCpuApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the CPU-related settings of a virtual machine.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCpuApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareCpuResult**](VcenterVmHardwareCpuResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, vcenter_vm_hardware_cpu_update)

Updates the CPU-related settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareCpuApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_cpu_update = VSphereAutomation::VcenterVmHardwareCpuUpdate.new # VcenterVmHardwareCpuUpdate | 

begin
  #Updates the CPU-related settings of a virtual machine.
  api_instance.update(vm, vcenter_vm_hardware_cpu_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCpuApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_cpu_update** | [**VcenterVmHardwareCpuUpdate**](VcenterVmHardwareCpuUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



