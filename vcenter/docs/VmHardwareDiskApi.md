# VSphereAutomation::VCenter::VmHardwareDiskApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmHardwareDiskApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/disk | Adds a virtual disk to the virtual machine. While adding the virtual disk, a new VMDK file may be created or an existing VMDK file may be used to back the virtual disk.
[**delete**](VmHardwareDiskApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/disk/{disk} | Removes a virtual disk from the virtual machine. This operation does not destroy the VMDK file that backs the virtual disk. It only detaches the VMDK file from the virtual machine. Once detached, the VMDK file will not be destroyed when the virtual machine to which it was associated is deleted.
[**get**](VmHardwareDiskApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/disk/{disk} | Returns information about a virtual disk.
[**list**](VmHardwareDiskApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/disk | Returns commonly used information about the virtual disks belonging to the virtual machine.
[**update**](VmHardwareDiskApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/disk/{disk} | Updates the configuration of a virtual disk. An update operation can be used to detach the existing VMDK file and attach another VMDK file to the virtual machine.


# **create**
> VcenterVmHardwareDiskCreateResult create(vm, vcenter_vm_hardware_disk_create)

Adds a virtual disk to the virtual machine. While adding the virtual disk, a new VMDK file may be created or an existing VMDK file may be used to back the virtual disk.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareDiskApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_disk_create = VSphereAutomation::VcenterVmHardwareDiskCreate.new # VcenterVmHardwareDiskCreate | 

begin
  #Adds a virtual disk to the virtual machine. While adding the virtual disk, a new VMDK file may be created or an existing VMDK file may be used to back the virtual disk.
  result = api_instance.create(vm, vcenter_vm_hardware_disk_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareDiskApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_disk_create** | [**VcenterVmHardwareDiskCreate**](VcenterVmHardwareDiskCreate.md)|  | 

### Return type

[**VcenterVmHardwareDiskCreateResult**](VcenterVmHardwareDiskCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(vm, disk)

Removes a virtual disk from the virtual machine. This operation does not destroy the VMDK file that backs the virtual disk. It only detaches the VMDK file from the virtual machine. Once detached, the VMDK file will not be destroyed when the virtual machine to which it was associated is deleted.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareDiskApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
disk = 'disk_example' # String | Virtual disk identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Disk.

begin
  #Removes a virtual disk from the virtual machine. This operation does not destroy the VMDK file that backs the virtual disk. It only detaches the VMDK file from the virtual machine. Once detached, the VMDK file will not be destroyed when the virtual machine to which it was associated is deleted.
  api_instance.delete(vm, disk)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareDiskApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **disk** | **String**| Virtual disk identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Disk. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VcenterVmHardwareDiskResult get(vm, disk)

Returns information about a virtual disk.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareDiskApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
disk = 'disk_example' # String | Virtual disk identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Disk.

begin
  #Returns information about a virtual disk.
  result = api_instance.get(vm, disk)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareDiskApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **disk** | **String**| Virtual disk identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Disk. | 

### Return type

[**VcenterVmHardwareDiskResult**](VcenterVmHardwareDiskResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterVmHardwareDiskListResult list(vm)

Returns commonly used information about the virtual disks belonging to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareDiskApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual disks belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareDiskApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareDiskListResult**](VcenterVmHardwareDiskListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, disk, vcenter_vm_hardware_disk_update)

Updates the configuration of a virtual disk. An update operation can be used to detach the existing VMDK file and attach another VMDK file to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareDiskApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
disk = 'disk_example' # String | Virtual disk identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Disk.
vcenter_vm_hardware_disk_update = VSphereAutomation::VcenterVmHardwareDiskUpdate.new # VcenterVmHardwareDiskUpdate | 

begin
  #Updates the configuration of a virtual disk. An update operation can be used to detach the existing VMDK file and attach another VMDK file to the virtual machine.
  api_instance.update(vm, disk, vcenter_vm_hardware_disk_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareDiskApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **disk** | **String**| Virtual disk identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Disk. | 
 **vcenter_vm_hardware_disk_update** | [**VcenterVmHardwareDiskUpdate**](VcenterVmHardwareDiskUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



