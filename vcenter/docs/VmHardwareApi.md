# VSphereAutomation::VCenter::VmHardwareApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmHardwareApi.md#get) | **GET** /vcenter/vm/{vm}/hardware | Returns the virtual hardware settings of a virtual machine.
[**update**](VmHardwareApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware | Updates the virtual hardware settings of a virtual machine.
[**upgrade**](VmHardwareApi.md#upgrade) | **POST** /vcenter/vm/{vm}/hardware/action/upgrade | Upgrades the virtual machine to a newer virtual hardware version.


# **get**
> VcenterVmHardwareResult get(vm)

Returns the virtual hardware settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the virtual hardware settings of a virtual machine.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareResult**](VcenterVmHardwareResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, vcenter_vm_hardware_update)

Updates the virtual hardware settings of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_update = VSphereAutomation::VcenterVmHardwareUpdate.new # VcenterVmHardwareUpdate | 

begin
  #Updates the virtual hardware settings of a virtual machine.
  api_instance.update(vm, vcenter_vm_hardware_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_update** | [**VcenterVmHardwareUpdate**](VcenterVmHardwareUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **upgrade**
> upgrade(vm, opts)

Upgrades the virtual machine to a newer virtual hardware version.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
opts = {
  vcenter_vm_hardware_upgrade: VSphereAutomation::VcenterVmHardwareUpgrade.new # VcenterVmHardwareUpgrade | 
}

begin
  #Upgrades the virtual machine to a newer virtual hardware version.
  api_instance.upgrade(vm, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareApi->upgrade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_upgrade** | [**VcenterVmHardwareUpgrade**](VcenterVmHardwareUpgrade.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



