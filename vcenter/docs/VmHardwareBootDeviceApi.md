# VSphereAutomation::VCenter::VmHardwareBootDeviceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmHardwareBootDeviceApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/boot/device | Returns an ordered list of boot devices for the virtual machine. If the list is empty, the virtual machine uses a default boot sequence.
[**set**](VmHardwareBootDeviceApi.md#set) | **PUT** /vcenter/vm/{vm}/hardware/boot/device | Sets the virtual devices that will be used to boot the virtual machine. The virtual machine will check the devices in order, attempting to boot from each, until the virtual machine boots successfully. If the list is empty, the virtual machine will use a default boot sequence. There should be no more than one instance of Device.Entry for a given device type except ETHERNET in the list.


# **get**
> VcenterVmHardwareBootDeviceResult get(vm)

Returns an ordered list of boot devices for the virtual machine. If the list is empty, the virtual machine uses a default boot sequence.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareBootDeviceApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns an ordered list of boot devices for the virtual machine. If the list is empty, the virtual machine uses a default boot sequence.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareBootDeviceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareBootDeviceResult**](VcenterVmHardwareBootDeviceResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(vm, vcenter_vm_hardware_boot_device_set)

Sets the virtual devices that will be used to boot the virtual machine. The virtual machine will check the devices in order, attempting to boot from each, until the virtual machine boots successfully. If the list is empty, the virtual machine will use a default boot sequence. There should be no more than one instance of Device.Entry for a given device type except ETHERNET in the list.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareBootDeviceApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_boot_device_set = VSphereAutomation::VcenterVmHardwareBootDeviceSet.new # VcenterVmHardwareBootDeviceSet | 

begin
  #Sets the virtual devices that will be used to boot the virtual machine. The virtual machine will check the devices in order, attempting to boot from each, until the virtual machine boots successfully. If the list is empty, the virtual machine will use a default boot sequence. There should be no more than one instance of Device.Entry for a given device type except ETHERNET in the list.
  api_instance.set(vm, vcenter_vm_hardware_boot_device_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareBootDeviceApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_boot_device_set** | [**VcenterVmHardwareBootDeviceSet**](VcenterVmHardwareBootDeviceSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



