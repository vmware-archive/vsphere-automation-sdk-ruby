# VSphereAutomation::VCenter::VmHardwareApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmHardwareApi.md#get) | **GET** /vcenter/vm/{vm}/hardware | Returns the virtual hardware settings of a virtual machine.
[**update**](VmHardwareApi.md#update) | **PATCH** /vcenter/vm/{vm}/hardware | Updates the virtual hardware settings of a virtual machine.
[**upgrade**](VmHardwareApi.md#upgrade) | **POST** /vcenter/vm/{vm}/hardware/action/upgrade | Upgrades the virtual machine to a newer virtual hardware version.


# **get**
> VcenterVmHardwareResult get(vm)

Returns the virtual hardware settings of a virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the virtual hardware settings of a virtual machine.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmHardwareResult**](VcenterVmHardwareResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, request_body)

Updates the virtual hardware settings of a virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmHardwareApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmHardwareUpdate.new # VcenterVmHardwareUpdate | 

begin
  #Updates the virtual hardware settings of a virtual machine.
  api_instance.update(vm, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareUpdate**](VcenterVmHardwareUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upgrade**
> upgrade(vm, opts)

Upgrades the virtual machine to a newer virtual hardware version.

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

api_instance = VSphereAutomation::VCenter::VmHardwareApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
opts = {
  request_body: VCenter::VcenterVmHardwareUpgrade.new # VcenterVmHardwareUpgrade | 
}

begin
  #Upgrades the virtual machine to a newer virtual hardware version.
  api_instance.upgrade(vm, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmHardwareApi->upgrade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmHardwareUpgrade**](VcenterVmHardwareUpgrade.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



