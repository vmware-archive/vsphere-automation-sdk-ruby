# VSphereAutomation::VCenter::VmHardwareEthernetApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareEthernetApi.md#connect) | **POST** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic}/connect | Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareEthernetApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/ethernet | Adds a virtual Ethernet adapter to the virtual machine.
[**delete**](VmHardwareEthernetApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic} | Removes a virtual Ethernet adapter from the virtual machine.
[**disconnect**](VmHardwareEthernetApi.md#disconnect) | **POST** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic}/disconnect | Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareEthernetApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic} | Returns information about a virtual Ethernet adapter.
[**list**](VmHardwareEthernetApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/ethernet | Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
[**update**](VmHardwareEthernetApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/hardware/ethernet/{nic} | Updates the configuration of a virtual Ethernet adapter.


# **connect**
> connect(vm, nic)

Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 

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

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
nic = 'nic_example' # String | Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.

begin
  #Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 
  api_instance.connect(vm, nic)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **nic** | **String**| Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create**
> VcenterVmHardwareEthernetCreateResp create(vm, request_body)

Adds a virtual Ethernet adapter to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareEthernetCreate.new # VcenterVmHardwareEthernetCreate | 

begin
  #Adds a virtual Ethernet adapter to the virtual machine.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareEthernetCreate**](VcenterVmHardwareEthernetCreate.md)|  | 

### Return type

[**VcenterVmHardwareEthernetCreateResp**](VcenterVmHardwareEthernetCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, nic)

Removes a virtual Ethernet adapter from the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
nic = 'nic_example' # String | Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.

begin
  #Removes a virtual Ethernet adapter from the virtual machine.
  api_instance.delete(vm, nic)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **nic** | **String**| Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disconnect**
> disconnect(vm, nic)

Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 

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

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
nic = 'nic_example' # String | Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.

begin
  #Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 
  api_instance.disconnect(vm, nic)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **nic** | **String**| Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareEthernetResp get(vm, nic)

Returns information about a virtual Ethernet adapter.

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

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
nic = 'nic_example' # String | Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.

begin
  #Returns information about a virtual Ethernet adapter.
  result = api_instance.get(vm, nic)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **nic** | **String**| Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | 

### Return type

[**VcenterVmHardwareEthernetResp**](VcenterVmHardwareEthernetResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareEthernetListResp list(vm)

Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareEthernetListResp**](VcenterVmHardwareEthernetListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, nic, request_body)

Updates the configuration of a virtual Ethernet adapter.

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

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
nic = 'nic_example' # String | Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
request_body = VCenter::VcenterVmHardwareEthernetUpdate.new # VcenterVmHardwareEthernetUpdate | 

begin
  #Updates the configuration of a virtual Ethernet adapter.
  api_instance.update(vm, nic, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **nic** | **String**| Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | 
 **request_body** | [**VcenterVmHardwareEthernetUpdate**](VcenterVmHardwareEthernetUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



