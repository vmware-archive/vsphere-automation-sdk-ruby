# VSphereAutomation::VCenter::VmHardwareAdapterScsiApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmHardwareAdapterScsiApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/adapter/scsi | Adds a virtual SCSI adapter to the virtual machine.
[**delete**](VmHardwareAdapterScsiApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Removes a virtual SCSI adapter from the virtual machine.
[**get**](VmHardwareAdapterScsiApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Returns information about a virtual SCSI adapter.
[**list**](VmHardwareAdapterScsiApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/adapter/scsi | Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.
[**update**](VmHardwareAdapterScsiApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/adapter/scsi/{adapter} | Updates the configuration of a virtual SCSI adapter.


# **create**
> VcenterVmHardwareAdapterScsiCreateResult create(vm, vcenter_vm_hardware_adapter_scsi_create)

Adds a virtual SCSI adapter to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_adapter_scsi_create = VSphereAutomation::VcenterVmHardwareAdapterScsiCreate.new # VcenterVmHardwareAdapterScsiCreate | 

begin
  #Adds a virtual SCSI adapter to the virtual machine.
  result = api_instance.create(vm, vcenter_vm_hardware_adapter_scsi_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterScsiApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_adapter_scsi_create** | [**VcenterVmHardwareAdapterScsiCreate**](VcenterVmHardwareAdapterScsiCreate.md)|  | 

### Return type

[**VcenterVmHardwareAdapterScsiCreateResult**](VcenterVmHardwareAdapterScsiCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(vm, adapter)

Removes a virtual SCSI adapter from the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.

begin
  #Removes a virtual SCSI adapter from the virtual machine.
  api_instance.delete(vm, adapter)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterScsiApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VcenterVmHardwareAdapterScsiResult get(vm, adapter)

Returns information about a virtual SCSI adapter.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.

begin
  #Returns information about a virtual SCSI adapter.
  result = api_instance.get(vm, adapter)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterScsiApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. | 

### Return type

[**VcenterVmHardwareAdapterScsiResult**](VcenterVmHardwareAdapterScsiResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterVmHardwareAdapterScsiListResult list(vm)

Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterScsiApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareAdapterScsiListResult**](VcenterVmHardwareAdapterScsiListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, adapter, vcenter_vm_hardware_adapter_scsi_update)

Updates the configuration of a virtual SCSI adapter.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.
vcenter_vm_hardware_adapter_scsi_update = VSphereAutomation::VcenterVmHardwareAdapterScsiUpdate.new # VcenterVmHardwareAdapterScsiUpdate | 

begin
  #Updates the configuration of a virtual SCSI adapter.
  api_instance.update(vm, adapter, vcenter_vm_hardware_adapter_scsi_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterScsiApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. | 
 **vcenter_vm_hardware_adapter_scsi_update** | [**VcenterVmHardwareAdapterScsiUpdate**](VcenterVmHardwareAdapterScsiUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



