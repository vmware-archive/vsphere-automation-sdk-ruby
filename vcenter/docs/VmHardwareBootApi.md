# VSphereAutomation::VCenter::VmHardwareBootApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmHardwareBootApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/boot | Returns the boot-related settings of a virtual machine.
[**update**](VmHardwareBootApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/boot | Updates the boot-related settings of a virtual machine.


# **get**
> VcenterVmHardwareBootResult get(vm)

Returns the boot-related settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareBootApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the boot-related settings of a virtual machine.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareBootApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareBootResult**](VcenterVmHardwareBootResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, vcenter_vm_hardware_boot_update)

Updates the boot-related settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareBootApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_boot_update = VSphereAutomation::VcenterVmHardwareBootUpdate.new # VcenterVmHardwareBootUpdate | 

begin
  #Updates the boot-related settings of a virtual machine.
  api_instance.update(vm, vcenter_vm_hardware_boot_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareBootApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_boot_update** | [**VcenterVmHardwareBootUpdate**](VcenterVmHardwareBootUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



