# VSphereAutomation::VCenter::StoragePoliciesComplianceVMApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](StoragePoliciesComplianceVMApi.md#list) | **GET** /vcenter/storage/policies/compliance/vm | Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.


# **list**
> VcenterStoragePoliciesComplianceVMListResult list(opts)

Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::StoragePoliciesComplianceVMApi.new
opts = {
  filter_status: ['filter_status_example'], # Array<String> | Compliance Status that a virtual machine must have to match the filter. Atleast one status must be specified.
  filter_vms: ['filter_vms_example'] # Array<String> | Identifiers of virtual machines that can match the filter If unset or empty, virtual machines with any identifier matches the filter When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
}

begin
  #Returns compliance information about at most 1000 virtual machines matching the filter VM.FilterSpec. If there are no virtual machines matching the VM.FilterSpec an empty List is returned. Virtual machines without storage policy association are not returned.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling StoragePoliciesComplianceVMApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_status** | [**Array&lt;String&gt;**](String.md)| Compliance Status that a virtual machine must have to match the filter. Atleast one status must be specified. | [optional] 
 **filter_vms** | [**Array&lt;String&gt;**](String.md)| Identifiers of virtual machines that can match the filter If unset or empty, virtual machines with any identifier matches the filter When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine. | [optional] 

### Return type

[**VcenterStoragePoliciesComplianceVMListResult**](VcenterStoragePoliciesComplianceVMListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



