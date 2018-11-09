# VSphereAutomation::VCenter::VmHardwareSerialApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareSerialApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/serial/{port}/connect | Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareSerialApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/serial | Adds a virtual serial port to the virtual machine.
[**delete**](VmHardwareSerialApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/serial/{port} | Removes a virtual serial port from the virtual machine.
[**disconnect**](VmHardwareSerialApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/serial/{port}/disconnect | Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareSerialApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/serial/{port} | Returns information about a virtual serial port.
[**list**](VmHardwareSerialApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/serial | Returns commonly used information about the virtual serial ports belonging to the virtual machine.
[**update**](VmHardwareSerialApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/serial/{port} | Updates the configuration of a virtual serial port.


# **connect**
> connect(vm, port)

Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort.

begin
  #Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
  api_instance.connect(vm, port)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **create**
> VcenterVmHardwareSerialCreateResult create(vm, vcenter_vm_hardware_serial_create)

Adds a virtual serial port to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_serial_create = VSphereAutomation::VcenterVmHardwareSerialCreate.new # VcenterVmHardwareSerialCreate | 

begin
  #Adds a virtual serial port to the virtual machine.
  result = api_instance.create(vm, vcenter_vm_hardware_serial_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_serial_create** | [**VcenterVmHardwareSerialCreate**](VcenterVmHardwareSerialCreate.md)|  | 

### Return type

[**VcenterVmHardwareSerialCreateResult**](VcenterVmHardwareSerialCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(vm, port)

Removes a virtual serial port from the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort.

begin
  #Removes a virtual serial port from the virtual machine.
  api_instance.delete(vm, port)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **disconnect**
> disconnect(vm, port)

Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort.

begin
  #Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
  api_instance.disconnect(vm, port)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VcenterVmHardwareSerialResult get(vm, port)

Returns information about a virtual serial port.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort.

begin
  #Returns information about a virtual serial port.
  result = api_instance.get(vm, port)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | 

### Return type

[**VcenterVmHardwareSerialResult**](VcenterVmHardwareSerialResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterVmHardwareSerialListResult list(vm)

Returns commonly used information about the virtual serial ports belonging to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual serial ports belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareSerialListResult**](VcenterVmHardwareSerialListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, port, vcenter_vm_hardware_serial_update)

Updates the configuration of a virtual serial port.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort.
vcenter_vm_hardware_serial_update = VSphereAutomation::VcenterVmHardwareSerialUpdate.new # VcenterVmHardwareSerialUpdate | 

begin
  #Updates the configuration of a virtual serial port.
  api_instance.update(vm, port, vcenter_vm_hardware_serial_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | 
 **vcenter_vm_hardware_serial_update** | [**VcenterVmHardwareSerialUpdate**](VcenterVmHardwareSerialUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



