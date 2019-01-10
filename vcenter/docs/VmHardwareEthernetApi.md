# VSphereAutomation::VCenter::VmHardwareEthernetApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect**](VmHardwareEthernetApi.md#connect) | **POST** /vcenter/vm/{vm}/hardware/ethernet/{nic}/connect | Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 
[**create**](VmHardwareEthernetApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/ethernet | Adds a virtual Ethernet adapter to the virtual machine.
[**delete**](VmHardwareEthernetApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/ethernet/{nic} | Removes a virtual Ethernet adapter from the virtual machine.
[**disconnect**](VmHardwareEthernetApi.md#disconnect) | **POST** /vcenter/vm/{vm}/hardware/ethernet/{nic}/disconnect | Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 
[**get**](VmHardwareEthernetApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/ethernet/{nic} | Returns information about a virtual Ethernet adapter.
[**list**](VmHardwareEthernetApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/ethernet | Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
[**update**](VmHardwareEthernetApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware/ethernet/{nic} | Updates the configuration of a virtual Ethernet adapter.


# **connect**
> connect(vm, nic)

Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **create**
> VcenterVmHardwareEthernetCreateResult create(vm, vcenter_vm_hardware_ethernet_create)

Adds a virtual Ethernet adapter to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
vcenter_vm_hardware_ethernet_create = VSphereAutomation::VcenterVmHardwareEthernetCreate.new # VcenterVmHardwareEthernetCreate | 

begin
  #Adds a virtual Ethernet adapter to the virtual machine.
  result = api_instance.create(vm, vcenter_vm_hardware_ethernet_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_hardware_ethernet_create** | [**VcenterVmHardwareEthernetCreate**](VcenterVmHardwareEthernetCreate.md)|  | 

### Return type

[**VcenterVmHardwareEthernetCreateResult**](VcenterVmHardwareEthernetCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete**
> delete(vm, nic)

Removes a virtual Ethernet adapter from the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **disconnect**
> disconnect(vm, nic)

Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> VcenterVmHardwareEthernetResult get(vm, nic)

Returns information about a virtual Ethernet adapter.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterVmHardwareEthernetResult**](VcenterVmHardwareEthernetResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterVmHardwareEthernetListResult list(vm)

Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterVmHardwareEthernetListResult**](VcenterVmHardwareEthernetListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, nic, vcenter_vm_hardware_ethernet_update)

Updates the configuration of a virtual Ethernet adapter.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmHardwareEthernetApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
nic = 'nic_example' # String | Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
vcenter_vm_hardware_ethernet_update = VSphereAutomation::VcenterVmHardwareEthernetUpdate.new # VcenterVmHardwareEthernetUpdate | 

begin
  #Updates the configuration of a virtual Ethernet adapter.
  api_instance.update(vm, nic, vcenter_vm_hardware_ethernet_update)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareEthernetApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **nic** | **String**| Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | 
 **vcenter_vm_hardware_ethernet_update** | [**VcenterVmHardwareEthernetUpdate**](VcenterVmHardwareEthernetUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



