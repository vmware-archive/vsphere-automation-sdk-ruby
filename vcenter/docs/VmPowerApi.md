# VSphereAutomation::VCenter::VmPowerApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmPowerApi.md#get) | **GET** /vcenter/vm/{vm}/power | Returns the power state information of a virtual machine.
[**reset**](VmPowerApi.md#reset) | **POST** /vcenter/vm/{vm}/power/reset | Resets a powered-on virtual machine.
[**start**](VmPowerApi.md#start) | **POST** /vcenter/vm/{vm}/power/start | Powers on a powered-off or suspended virtual machine.
[**stop**](VmPowerApi.md#stop) | **POST** /vcenter/vm/{vm}/power/stop | Powers off a powered-on or suspended virtual machine.
[**suspend**](VmPowerApi.md#suspend) | **POST** /vcenter/vm/{vm}/power/suspend | Suspends a powered-on virtual machine.


# **get**
> VcenterVmPowerResult get(vm)

Returns the power state information of a virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmPowerApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the power state information of a virtual machine.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmPowerApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmPowerResult**](VcenterVmPowerResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reset**
> reset(vm)

Resets a powered-on virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmPowerApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Resets a powered-on virtual machine.
  api_instance.reset(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmPowerApi->reset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **start**
> start(vm)

Powers on a powered-off or suspended virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmPowerApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Powers on a powered-off or suspended virtual machine.
  api_instance.start(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmPowerApi->start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stop**
> stop(vm)

Powers off a powered-on or suspended virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmPowerApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Powers off a powered-on or suspended virtual machine.
  api_instance.stop(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmPowerApi->stop: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **suspend**
> suspend(vm)

Suspends a powered-on virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmPowerApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Suspends a powered-on virtual machine.
  api_instance.suspend(vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmPowerApi->suspend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



