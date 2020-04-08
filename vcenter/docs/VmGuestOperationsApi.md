# VSphereAutomation::VCenter::VmGuestOperationsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestOperationsApi.md#get) | **GET** /rest/vcenter/vm/{vm}/guest/operations | Get information about the guest operation status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  


# **get**
> VcenterVmGuestOperationsResp get(vm)

Get information about the guest operation status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::VmGuestOperationsApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Get information about the guest operation status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestOperationsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestOperationsResp**](VcenterVmGuestOperationsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



