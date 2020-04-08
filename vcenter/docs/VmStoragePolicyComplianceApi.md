# VSphereAutomation::VCenter::VmStoragePolicyComplianceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](VmStoragePolicyComplianceApi.md#check) | **POST** /rest/vcenter/vm/{vm}/storage/policy/compliance?action&#x3D;check | Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
[**get**](VmStoragePolicyComplianceApi.md#get) | **GET** /rest/vcenter/vm/{vm}/storage/policy/compliance | Returns the cached storage policy compliance information of a virtual machine.


# **check**
> VcenterVmStoragePolicyComplianceCheckResp check(vm, opts)

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
opts = {
  request_body: VCenter::VcenterVmStoragePolicyComplianceCheck.new # VcenterVmStoragePolicyComplianceCheck | 
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
 **request_body** | [**VcenterVmStoragePolicyComplianceCheck**](VcenterVmStoragePolicyComplianceCheck.md)|  | [optional] 

### Return type

[**VcenterVmStoragePolicyComplianceCheckResp**](VcenterVmStoragePolicyComplianceCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterVmStoragePolicyComplianceResp get(vm)

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

[**VcenterVmStoragePolicyComplianceResp**](VcenterVmStoragePolicyComplianceResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



