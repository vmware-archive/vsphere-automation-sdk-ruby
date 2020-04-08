# VSphereAutomation::VCenter::VmHardwareParallelApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareParallelApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/parallel/{port}/connect | Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareParallelApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/parallel | Adds a virtual parallel port to the virtual machine.
[**delete**](VmHardwareParallelApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/parallel/{port} | Removes a virtual parallel port from the virtual machine.
[**disconnect**](VmHardwareParallelApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/parallel/{port}/disconnect | Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareParallelApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/parallel/{port} | Returns information about a virtual parallel port.
[**list**](VmHardwareParallelApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/parallel | Returns commonly used information about the virtual parallel ports belonging to the virtual machine.
[**update**](VmHardwareParallelApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/parallel/{port} | Updates the configuration of a virtual parallel port.


# **connect**
> connect(vm, port)

Connects a virtual parallel port of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the connected state when the virtual machine is powered on. 

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> VcenterVmHardwareParallelCreateResp create(vm, request_body)

Adds a virtual parallel port to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareParallelCreate.new # VcenterVmHardwareParallelCreate | 

begin
  #Adds a virtual parallel port to the virtual machine.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareParallelCreate**](VcenterVmHardwareParallelCreate.md)|  | 

### Return type

[**VcenterVmHardwareParallelCreateResp**](VcenterVmHardwareParallelCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, port)

Removes a virtual parallel port from the virtual machine.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disconnect**
> disconnect(vm, port)

Disconnects a virtual parallel port of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the parallel port is not connected to its backing.   For a powered-off virtual machine, the Parallel.update operation may be used to configure the virtual parallel port to start in the disconnected state when the virtual machine is powered on. 

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareParallelResp get(vm, port)

Returns information about a virtual parallel port.

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

[**VcenterVmHardwareParallelResp**](VcenterVmHardwareParallelResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareParallelListResp list(vm)

Returns commonly used information about the virtual parallel ports belonging to the virtual machine.

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

[**VcenterVmHardwareParallelListResp**](VcenterVmHardwareParallelListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, port, request_body)

Updates the configuration of a virtual parallel port.

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

api_instance = VSphereAutomation::VCenter::VmHardwareParallelApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
port = 'port_example' # String | Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort.
request_body = VCenter::VcenterVmHardwareParallelUpdate.new # VcenterVmHardwareParallelUpdate | 

begin
  #Updates the configuration of a virtual parallel port.
  api_instance.update(vm, port, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareParallelApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **port** | **String**| Virtual parallel port identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ParallelPort. | 
 **request_body** | [**VcenterVmHardwareParallelUpdate**](VcenterVmHardwareParallelUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



