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
> VcenterVmHardwareAdapterScsiCreateResult create(vm, request_body)

Adds a virtual SCSI adapter to the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareAdapterScsiCreate.new # VcenterVmHardwareAdapterScsiCreate | 

begin
  #Adds a virtual SCSI adapter to the virtual machine.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterScsiApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareAdapterScsiCreate**](VcenterVmHardwareAdapterScsiCreate.md)|  | 

### Return type

[**VcenterVmHardwareAdapterScsiCreateResult**](VcenterVmHardwareAdapterScsiCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, adapter)

Removes a virtual SCSI adapter from the virtual machine.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareAdapterScsiResult get(vm, adapter)

Returns information about a virtual SCSI adapter.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareAdapterScsiListResult list(vm)

Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, adapter, request_body)

Updates the configuration of a virtual SCSI adapter.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.
request_body = VCenter::VcenterVmHardwareAdapterScsiUpdate.new # VcenterVmHardwareAdapterScsiUpdate | 

begin
  #Updates the configuration of a virtual SCSI adapter.
  api_instance.update(vm, adapter, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterScsiApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter. | 
 **request_body** | [**VcenterVmHardwareAdapterScsiUpdate**](VcenterVmHardwareAdapterScsiUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



