# VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmHardwareAdapterNvmeApi.md#create) | **POST** /rest/vcenter/vm/{vm}/hardware/adapter/nvme | Adds a virtual NVMe adapter to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](VmHardwareAdapterNvmeApi.md#delete) | **DELETE** /rest/vcenter/vm/{vm}/hardware/adapter/nvme/{adapter} | Removes a virtual NVMe adapter from the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](VmHardwareAdapterNvmeApi.md#get) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/nvme/{adapter} | Returns information about a virtual NVMe adapter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**list**](VmHardwareAdapterNvmeApi.md#list) | **GET** /rest/vcenter/vm/{vm}/hardware/adapter/nvme | Returns commonly used information about the virtual NVMe adapters belonging to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> VcenterVmHardwareAdapterNvmeCreateResp create(vm, request_body)

Adds a virtual NVMe adapter to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareAdapterNvmeCreate.new # VcenterVmHardwareAdapterNvmeCreate | 

begin
  #Adds a virtual NVMe adapter to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterNvmeApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareAdapterNvmeCreate**](VcenterVmHardwareAdapterNvmeCreate.md)|  | 

### Return type

[**VcenterVmHardwareAdapterNvmeCreateResp**](VcenterVmHardwareAdapterNvmeCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(vm, adapter)

Removes a virtual NVMe adapter from the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual NVMe adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.NvmeAdapter.

begin
  #Removes a virtual NVMe adapter from the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(vm, adapter)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterNvmeApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual NVMe adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.NvmeAdapter. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmHardwareAdapterNvmeResp get(vm, adapter)

Returns information about a virtual NVMe adapter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
adapter = 'adapter_example' # String | Virtual NVMe adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.NvmeAdapter.

begin
  #Returns information about a virtual NVMe adapter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(vm, adapter)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterNvmeApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **adapter** | **String**| Virtual NVMe adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.NvmeAdapter. | 

### Return type

[**VcenterVmHardwareAdapterNvmeResp**](VcenterVmHardwareAdapterNvmeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmHardwareAdapterNvmeListResp list(vm)

Returns commonly used information about the virtual NVMe adapters belonging to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmHardwareAdapterNvmeApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns commonly used information about the virtual NVMe adapters belonging to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareAdapterNvmeApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareAdapterNvmeListResp**](VcenterVmHardwareAdapterNvmeListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



