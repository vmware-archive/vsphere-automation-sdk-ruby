# VSphereAutomation::VCenter::VmHardwareFloppyApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareFloppyApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/floppy/{floppy}/connect | Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareFloppyApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/floppy | Adds a virtual floppy drive to the virtual machine.
[**delete**](VmHardwareFloppyApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/floppy/{floppy} | Removes a virtual floppy drive from the virtual machine.
[**disconnect**](VmHardwareFloppyApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/floppy/{floppy}/disconnect | Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareFloppyApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/floppy/{floppy} | Returns information about a virtual floppy drive.
[**list**](VmHardwareFloppyApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/floppy | Returns commonly used information about the virtual floppy drives belonging to the virtual machine.
[**update**](VmHardwareFloppyApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/floppy/{floppy} | Updates the configuration of a virtual floppy drive.


# **connect**
> connect(vm, floppy)

Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on. 

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

api_instance = VSphereAutomation::VCenter::VmHardwareFloppyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
floppy = 'floppy_example' # String | Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.

begin
  #Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy drive to start in the connected state when the virtual machine is powered on. 
  api_instance.connect(vm, floppy)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareFloppyApi->connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **floppy** | **String**| Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> VcenterVmHardwareFloppyCreateResult create(vm, request_body)

Adds a virtual floppy drive to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareFloppyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareFloppyCreate.new # VcenterVmHardwareFloppyCreate | 

begin
  #Adds a virtual floppy drive to the virtual machine.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareFloppyApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareFloppyCreate**](VcenterVmHardwareFloppyCreate.md)|  | 

### Return type

[**VcenterVmHardwareFloppyCreateResult**](VcenterVmHardwareFloppyCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, floppy)

Removes a virtual floppy drive from the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareFloppyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
floppy = 'floppy_example' # String | Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.

begin
  #Removes a virtual floppy drive from the virtual machine.
  api_instance.delete(vm, floppy)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareFloppyApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **floppy** | **String**| Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disconnect**
> disconnect(vm, floppy)

Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on. 

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

api_instance = VSphereAutomation::VCenter::VmHardwareFloppyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
floppy = 'floppy_example' # String | Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.

begin
  #Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the floppy drive is not connected to its backing resource.   For a powered-off virtual machine, the Floppy.update operation may be used to configure the virtual floppy floppy to start in the disconnected state when the virtual machine is powered on. 
  api_instance.disconnect(vm, floppy)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareFloppyApi->disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **floppy** | **String**| Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareFloppyResult get(vm, floppy)

Returns information about a virtual floppy drive.

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

api_instance = VSphereAutomation::VCenter::VmHardwareFloppyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
floppy = 'floppy_example' # String | Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.

begin
  #Returns information about a virtual floppy drive.
  result = api_instance.get(vm, floppy)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareFloppyApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **floppy** | **String**| Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy. | 

### Return type

[**VcenterVmHardwareFloppyResult**](VcenterVmHardwareFloppyResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareFloppyListResult list(vm)

Returns commonly used information about the virtual floppy drives belonging to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareFloppyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual floppy drives belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareFloppyApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareFloppyListResult**](VcenterVmHardwareFloppyListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, floppy, request_body)

Updates the configuration of a virtual floppy drive.

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

api_instance = VSphereAutomation::VCenter::VmHardwareFloppyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
floppy = 'floppy_example' # String | Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy.
request_body = VCenter::VcenterVmHardwareFloppyUpdate.new # VcenterVmHardwareFloppyUpdate | 

begin
  #Updates the configuration of a virtual floppy drive.
  api_instance.update(vm, floppy, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareFloppyApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **floppy** | **String**| Virtual floppy drive identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Floppy. | 
 **request_body** | [**VcenterVmHardwareFloppyUpdate**](VcenterVmHardwareFloppyUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



