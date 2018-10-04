# VSphereAutomation::VCenter::VmStoragePolicyApi

All URIs are relative to *http:///rest*

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update**
> update(vm, opts)

Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmStoragePolicyApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
opts = {
  vcenter_vm_storage_policy_update: VSphereAutomation::VcenterVmStoragePolicyUpdate.new # VcenterVmStoragePolicyUpdate | 
}

begin
  #Updates the storage policy configuration of a virtual machine and/or its associated virtual hard disks.
  api_instance.update(vm, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmStoragePolicyApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_storage_policy_update** | [**VcenterVmStoragePolicyUpdate**](VcenterVmStoragePolicyUpdate.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



