# VSphereAutomation::VCenter::VmGuestCustomizationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestCustomizationApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/customization | Returns the status of the customization operation that has been applied for the virtual machine in vm. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**set**](VmGuestCustomizationApi.md#set) | **PUT** /rest/vcenter/vm/{vm}/guest/customization | Applies a customization specification in spec on the virtual machine in vm. This operation only sets the specification settings for the virtual machine. The actual customization happens inside the guest when the virtual machine is powered on. If spec has unset values, then any pending customization settings for the virtual machine are cleared. If there is a pending customization for the virtual machine and spec has valid content, then the existing customization setting will be overwritten with the new settings.


# **get**
> VcenterVmGuestCustomizationResp get(vm)

Returns the status of the customization operation that has been applied for the virtual machine in vm. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmGuestCustomizationApi.new
vm = 'vm_example' # String | The unique identifier of the virtual machine that needs to be queried. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the status of the customization operation that has been applied for the virtual machine in vm. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestCustomizationApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| The unique identifier of the virtual machine that needs to be queried. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestCustomizationResp**](VcenterVmGuestCustomizationResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(vm, request_body)

Applies a customization specification in spec on the virtual machine in vm. This operation only sets the specification settings for the virtual machine. The actual customization happens inside the guest when the virtual machine is powered on. If spec has unset values, then any pending customization settings for the virtual machine are cleared. If there is a pending customization for the virtual machine and spec has valid content, then the existing customization setting will be overwritten with the new settings.

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

api_instance = VSphereAutomation::VCenter::VmGuestCustomizationApi.new
vm = 'vm_example' # String | The unique identifier of the virtual machine that needs to be customized. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmGuestCustomizationSet.new # VcenterVmGuestCustomizationSet | 

begin
  #Applies a customization specification in spec on the virtual machine in vm. This operation only sets the specification settings for the virtual machine. The actual customization happens inside the guest when the virtual machine is powered on. If spec has unset values, then any pending customization settings for the virtual machine are cleared. If there is a pending customization for the virtual machine and spec has valid content, then the existing customization setting will be overwritten with the new settings.
  api_instance.set(vm, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestCustomizationApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| The unique identifier of the virtual machine that needs to be customized. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmGuestCustomizationSet**](VcenterVmGuestCustomizationSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



