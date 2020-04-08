# VSphereAutomation::VCenter::VmHardwareSerialApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareSerialApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/serial/{port}/connect | Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareSerialApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/serial | Adds a virtual serial port to the virtual machine.
[**delete**](VmHardwareSerialApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/serial/{port} | Removes a virtual serial port from the virtual machine.
[**disconnect**](VmHardwareSerialApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/serial/{port}/disconnect | Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareSerialApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/serial/{port} | Returns information about a virtual serial port.
[**list**](VmHardwareSerialApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/serial | Returns commonly used information about the virtual serial ports belonging to the virtual machine.
[**update**](VmHardwareSerialApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/serial/{port} | Updates the configuration of a virtual serial port.


# **connect**
> connect(vm, port)

Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the connected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> VcenterVmHardwareSerialCreateResp create(vm, request_body)

Adds a virtual serial port to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareSerialCreate.new # VcenterVmHardwareSerialCreate | 

begin
  #Adds a virtual serial port to the virtual machine.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareSerialCreate**](VcenterVmHardwareSerialCreate.md)|  | 

### Return type

[**VcenterVmHardwareSerialCreateResp**](VcenterVmHardwareSerialCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, port)

Removes a virtual serial port from the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disconnect**
> disconnect(vm, port)

Disconnects a virtual serial port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the serial port is not connected to its backing.   For a powered-off virtual machine, the Serial.update operation may be used to configure the virtual serial port to start in the disconnected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareSerialResp get(vm, port)

Returns information about a virtual serial port.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[**VcenterVmHardwareSerialResp**](VcenterVmHardwareSerialResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareSerialListResp list(vm)

Returns commonly used information about the virtual serial ports belonging to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[**VcenterVmHardwareSerialListResp**](VcenterVmHardwareSerialListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, port, request_body)

Updates the configuration of a virtual serial port.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::VmHardwareSerialApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort.
request_body = VCenter::VcenterVmHardwareSerialUpdate.new # VcenterVmHardwareSerialUpdate | 

begin
  #Updates the configuration of a virtual serial port.
  api_instance.update(vm, port, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareSerialApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual serial port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SerialPort. | 
 **request_body** | [**VcenterVmHardwareSerialUpdate**](VcenterVmHardwareSerialUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



