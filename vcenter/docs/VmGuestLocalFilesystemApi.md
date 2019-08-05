# VSphereAutomation::VCenter::VmGuestLocalFilesystemApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmGuestLocalFilesystemApi.md#get) | **GET** /vcenter/vm/{vm}/guest/local-filesystem | Returns details of the local file systems in the guest operating system.


# **get**
> VcenterVmGuestLocalFilesystemResult get(vm)

Returns details of the local file systems in the guest operating system.

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

api_instance = VSphereAutomation::VCenter::VmGuestLocalFilesystemApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns details of the local file systems in the guest operating system.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmGuestLocalFilesystemApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmGuestLocalFilesystemResult**](VcenterVmGuestLocalFilesystemResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



