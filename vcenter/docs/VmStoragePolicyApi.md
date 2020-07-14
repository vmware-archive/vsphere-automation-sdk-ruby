# VSphereAutomation::VCenter::VmStoragePolicyApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmStoragePolicyApi.md#get) | **GET** /vcenter/vm/{vm}/storage/policy | Returns Information about Storage Policy associated with a virtual machine&#39;s home directory and/or its virtual hard disks.
[**update**](VmStoragePolicyApi.md#update) | **PATCH** /vcenter/vm/{vm}/storage/policy | Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.


# **get**
> VcenterVmStoragePolicyResult get(vm)

Returns Information about Storage Policy associated with a virtual machine's home directory and/or its virtual hard disks.

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

api_instance = VSphereAutomation::VCenter::VmStoragePolicyApi.new
vm = 'vm_example' # String | Virtual machine identifier The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns Information about Storage Policy associated with a virtual machine's home directory and/or its virtual hard disks.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmStoragePolicyApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmStoragePolicyResult**](VcenterVmStoragePolicyResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, request_body)

Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.

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

api_instance = VSphereAutomation::VCenter::VmStoragePolicyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmStoragePolicyUpdate.new # VcenterVmStoragePolicyUpdate | 

begin
  #Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.
  api_instance.update(vm, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmStoragePolicyApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmStoragePolicyUpdate**](VcenterVmStoragePolicyUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



