# VSphereAutomation::VCenter::VmHardwareCdromApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareCdromApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/cdrom/{cdrom}/connect | Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareCdromApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/cdrom | Adds a virtual CD-ROM device to the virtual machine.
[**delete**](VmHardwareCdromApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Removes a virtual CD-ROM device from the virtual machine.
[**disconnect**](VmHardwareCdromApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/cdrom/{cdrom}/disconnect | Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareCdromApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Returns information about a virtual CD-ROM device.
[**list**](VmHardwareCdromApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/cdrom | Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.
[**update**](VmHardwareCdromApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/cdrom/{cdrom} | Updates the configuration of a virtual CD-ROM device.


# **connect**
> connect(vm, cdrom)

Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on. 

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

api_instance = VSphereAutomation::VCenter::VmHardwareCdromApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
cdrom = 'cdrom_example' # String | Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.

begin
  #Connects a virtual CD-ROM device of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the connected state when the virtual machine is powered on. 
  api_instance.connect(vm, cdrom)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCdromApi->connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **cdrom** | **String**| Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> VcenterVmHardwareCdromCreateResult create(vm, request_body)

Adds a virtual CD-ROM device to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareCdromApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareCdromCreate.new # VcenterVmHardwareCdromCreate | 

begin
  #Adds a virtual CD-ROM device to the virtual machine.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCdromApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareCdromCreate**](VcenterVmHardwareCdromCreate.md)|  | 

### Return type

[**VcenterVmHardwareCdromCreateResult**](VcenterVmHardwareCdromCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, cdrom)

Removes a virtual CD-ROM device from the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareCdromApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
cdrom = 'cdrom_example' # String | Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.

begin
  #Removes a virtual CD-ROM device from the virtual machine.
  api_instance.delete(vm, cdrom)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCdromApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **cdrom** | **String**| Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disconnect**
> disconnect(vm, cdrom)

Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on. 

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

api_instance = VSphereAutomation::VCenter::VmHardwareCdromApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
cdrom = 'cdrom_example' # String | Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.

begin
  #Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the CD-ROM device is not connected to its backing resource.   For a powered-off virtual machine, the Cdrom.update operation may be used to configure the virtual CD-ROM device to start in the disconnected state when the virtual machine is powered on. 
  api_instance.disconnect(vm, cdrom)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCdromApi->disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **cdrom** | **String**| Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareCdromResult get(vm, cdrom)

Returns information about a virtual CD-ROM device.

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

api_instance = VSphereAutomation::VCenter::VmHardwareCdromApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
cdrom = 'cdrom_example' # String | Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.

begin
  #Returns information about a virtual CD-ROM device.
  result = api_instance.get(vm, cdrom)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCdromApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **cdrom** | **String**| Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. | 

### Return type

[**VcenterVmHardwareCdromResult**](VcenterVmHardwareCdromResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareCdromListResult list(vm)

Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareCdromApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual CD-ROM devices belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCdromApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareCdromListResult**](VcenterVmHardwareCdromListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, cdrom, request_body)

Updates the configuration of a virtual CD-ROM device.

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

api_instance = VSphereAutomation::VCenter::VmHardwareCdromApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
cdrom = 'cdrom_example' # String | Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom.
request_body = VCenter::VcenterVmHardwareCdromUpdate.new # VcenterVmHardwareCdromUpdate | 

begin
  #Updates the configuration of a virtual CD-ROM device.
  api_instance.update(vm, cdrom, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareCdromApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **cdrom** | **String**| Virtual CD-ROM device identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Cdrom. | 
 **request_body** | [**VcenterVmHardwareCdromUpdate**](VcenterVmHardwareCdromUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



