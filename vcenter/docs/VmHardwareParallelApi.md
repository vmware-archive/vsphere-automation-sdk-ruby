# VSphereAutomation::VCenter::VmHardwareParallelApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareParallelApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/parallel/{port}/connect | Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareParallelApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/parallel | Adds a virtual parallel port to the virtual machine.
[**delete**](VmHardwareParallelApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/parallel/{port} | Removes a virtual parallel port from the virtual machine.
[**disconnect**](VmHardwareParallelApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/parallel/{port}/disconnect | Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareParallelApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/parallel/{port} | Returns information about a virtual parallel port.
[**list**](VmHardwareParallelApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/parallel | Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
[**update**](VmHardwareParallelApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/parallel/{port} | Updates the configuration of a virtual parallel port.


# **connect**
> connect(vm, port)

Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.

begin
  #Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 
  api_instance.connect(vm, port)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **create**
> VcenterVmHardwareParallelCreateResult create(vm, vcenter_vm_hardware_parallel_create)

Adds a virtual parallel port to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_parallel_create = VSphereAutomation::VcenterVmHardwareParallelCreate.new # VcenterVmHardwareParallelCreate | 

begin
  #Adds a virtual parallel port to the virtual machine.
  result = api_instance.create(vm, vcenter_vm_hardware_parallel_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_parallel_create** | [**VcenterVmHardwareParallelCreate**](VcenterVmHardwareParallelCreate.md)|  | 

### Return type

[**VcenterVmHardwareParallelCreateResult**](VcenterVmHardwareParallelCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(vm, port)

Removes a virtual parallel port from the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.

begin
  #Removes a virtual parallel port from the virtual machine.
  api_instance.delete(vm, port)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **disconnect**
> disconnect(vm, port)

Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.

begin
  #Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 
  api_instance.disconnect(vm, port)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VcenterVmHardwareParallelResult get(vm, port)

Returns information about a virtual parallel port.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.

begin
  #Returns information about a virtual parallel port.
  result = api_instance.get(vm, port)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | 

### Return type

[**VcenterVmHardwareParallelResult**](VcenterVmHardwareParallelResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterVmHardwareParallelListResult list(vm)

Returns commonly used information about the virtual parallel ports belonging to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareParallelListResult**](VcenterVmHardwareParallelListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, port, vcenter_vm_hardware_parallel_update)

Updates the configuration of a virtual parallel port.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
vcenter_vm_hardware_parallel_update = VSphereAutomation::VcenterVmHardwareParallelUpdate.new # VcenterVmHardwareParallelUpdate | 

begin
  #Updates the configuration of a virtual parallel port.
  api_instance.update(vm, port, vcenter_vm_hardware_parallel_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | 
 **vcenter_vm_hardware_parallel_update** | [**VcenterVmHardwareParallelUpdate**](VcenterVmHardwareParallelUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



