# VSphereAutomation::VCenter::VmHardwareAdapterSataApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmHardwareAdapterSataApi.md#create) | **POST** /vcenter/vm/{vm}/hardware/adapter/sata | Adds a virtual SATA adapter to the virtual machine.
[**delete**](VmHardwareAdapterSataApi.md#delete) | **DELETE** /vcenter/vm/{vm}/hardware/adapter/sata/{adapter} | Removes a virtual SATA adapter from the virtual machine.
[**get**](VmHardwareAdapterSataApi.md#get) | **GET** /vcenter/vm/{vm}/hardware/adapter/sata/{adapter} | Returns information about a virtual SATA adapter.
[**list**](VmHardwareAdapterSataApi.md#list) | **GET** /vcenter/vm/{vm}/hardware/adapter/sata | Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.


# **create**
> VcenterVmHardwareAdapterSataCreateResult create(vm, request_body)

Adds a virtual SATA adapter to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterSataApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareAdapterSataCreate.new # VcenterVmHardwareAdapterSataCreate | 

begin
  #Adds a virtual SATA adapter to the virtual machine.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterSataApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareAdapterSataCreate**](VcenterVmHardwareAdapterSataCreate.md)|  | 

### Return type

[**VcenterVmHardwareAdapterSataCreateResult**](VcenterVmHardwareAdapterSataCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, adapter)

Removes a virtual SATA adapter from the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterSataApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.

begin
  #Removes a virtual SATA adapter from the virtual machine.
  api_instance.delete(vm, adapter)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterSataApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareAdapterSataResult get(vm, adapter)

Returns information about a virtual SATA adapter.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterSataApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.

begin
  #Returns information about a virtual SATA adapter.
  result = api_instance.get(vm, adapter)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterSataApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter. | 

### Return type

[**VcenterVmHardwareAdapterSataResult**](VcenterVmHardwareAdapterSataResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareAdapterSataListResult list(vm)

Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterSataApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterSataApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareAdapterSataListResult**](VcenterVmHardwareAdapterSataListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



