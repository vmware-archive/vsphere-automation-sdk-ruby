# VSphereAutomation::VCenter::VmStoragePolicyComplianceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VmStoragePolicyComplianceApi.md#check) | **POST** /vcenter/vm/{vm}/storage/policy/compliance | Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
[**get**](VmStoragePolicyComplianceApi.md#get) | **GET** /vcenter/vm/{vm}/storage/policy/compliance | Returns the cached storage policy compliance information of a virtual machine.


# **check**
> VcenterVmStoragePolicyComplianceCheckResult check(vm, action, opts)

Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.

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

api_instance = VSphereAutomation::VCenter::VmStoragePolicyComplianceApi.new
vm = 'vm_example' # String | Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
action = 'action_example' # String | action=check
opts = {
  request_body: VCenter::VcenterVmStoragePolicyComplianceCheck.new # VcenterVmStoragePolicyComplianceCheck | 
}

begin
  #Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
  result = api_instance.check(vm, action, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmStoragePolicyComplianceApi->check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **action** | **String**| action&#x3D;check | 
 **request_body** | [**VcenterVmStoragePolicyComplianceCheck**](VcenterVmStoragePolicyComplianceCheck.md)|  | [optional] 

### Return type

[**VcenterVmStoragePolicyComplianceCheckResult**](VcenterVmStoragePolicyComplianceCheckResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterVmStoragePolicyComplianceResult get(vm)

Returns the cached storage policy compliance information of a virtual machine.

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



