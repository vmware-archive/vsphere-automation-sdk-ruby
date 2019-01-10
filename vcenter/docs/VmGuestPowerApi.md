# VSphereAutomation::VCenter::VmGuestPowerApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestPowerApi.md#get) | **GET** /vcenter/vm/{vm}/guest/power | Returns information about the guest operating system power state.
[**reboot**](VmGuestPowerApi.md#reboot) | **POST** /vcenter/vm/{vm}/guest/power?action&#x3D;reboot | Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
[**shutdown**](VmGuestPowerApi.md#shutdown) | **POST** /vcenter/vm/{vm}/guest/power?action&#x3D;shutdown | Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
[**standby**](VmGuestPowerApi.md#standby) | **POST** /vcenter/vm/{vm}/guest/power?action&#x3D;standby | Issues a request to the guest operating system asking it to perform a suspend operation.


# **get**
> VcenterVmGuestPowerResult get(vm)

Returns information about the guest operating system power state.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmGuestPowerApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns information about the guest operating system power state.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestPowerApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestPowerResult**](VcenterVmGuestPowerResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **reboot**
> reboot(vm)

Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmGuestPowerApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Issues a request to the guest operating system asking it to perform a reboot. This request returns immediately and does not wait for the guest operating system to complete the operation.
  api_instance.reboot(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestPowerApi->reboot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **shutdown**
> shutdown(vm)

Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmGuestPowerApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Issues a request to the guest operating system asking it to perform a clean shutdown of all services. This request returns immediately and does not wait for the guest operating system to complete the operation.
  api_instance.shutdown(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestPowerApi->shutdown: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **standby**
> standby(vm)

Issues a request to the guest operating system asking it to perform a suspend operation.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmGuestPowerApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Issues a request to the guest operating system asking it to perform a suspend operation.
  api_instance.standby(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestPowerApi->standby: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



