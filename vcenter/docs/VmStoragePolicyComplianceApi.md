# VSphereAutomation::VCenter::VmStoragePolicyComplianceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VmStoragePolicyComplianceApi.md#check) | **POST** /vcenter/vm/{vm}/storage/policy/compliance?action&#x3D;check | Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
[**get**](VmStoragePolicyComplianceApi.md#get) | **GET** /vcenter/vm/{vm}/storage/policy/compliance | Returns the cached storage policy compliance information of a virtual machine.


# **check**
> VcenterVmStoragePolicyComplianceCheckResult check(vm, opts)

Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmStoragePolicyComplianceApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
opts = {
  vcenter_vm_storage_policy_compliance_check: VSphereAutomation::VcenterVmStoragePolicyComplianceCheck.new # VcenterVmStoragePolicyComplianceCheck | 
}

begin
  #Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
  result = api_instance.check(vm, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmStoragePolicyComplianceApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **vcenter_vm_storage_policy_compliance_check** | [**VcenterVmStoragePolicyComplianceCheck**](VcenterVmStoragePolicyComplianceCheck.md)|  | [optional] 

### Return type

[**VcenterVmStoragePolicyComplianceCheckResult**](VcenterVmStoragePolicyComplianceCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> VcenterVmStoragePolicyComplianceResult get(vm)

Returns the cached storage policy compliance information of a virtual machine.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmStoragePolicyComplianceApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Returns the cached storage policy compliance information of a virtual machine.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmStoragePolicyComplianceApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmStoragePolicyComplianceResult**](VcenterVmStoragePolicyComplianceResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



