# VSphereAutomation::VCenter::VmToolsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](VmToolsApi.md#get) | **GET** /rest/vcenter/vm/{vm}/tools | Get the properties of VMware Tools.
[**update**](VmToolsApi.md#update) | **PATCH** /rest/vcenter/vm/{vm}/tools | Update the properties of VMware Tools.
[**upgrade**](VmToolsApi.md#upgrade) | **POST** /rest/vcenter/vm/{vm}/tools?action&#x3D;upgrade | Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.


# **get**
> VcenterVmToolsResp get(vm)

Get the properties of VMware Tools.

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

api_instance = VSphereAutomation::VCenter::VmToolsApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Get the properties of VMware Tools.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmToolsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmToolsResp**](VcenterVmToolsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(vm, request_body)

Update the properties of VMware Tools.

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

api_instance = VSphereAutomation::VCenter::VmToolsApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmToolsUpdate.new # VcenterVmToolsUpdate | 

begin
  #Update the properties of VMware Tools.
  api_instance.update(vm, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmToolsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmToolsUpdate**](VcenterVmToolsUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upgrade**
> upgrade(vm, opts)

Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.

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

api_instance = VSphereAutomation::VCenter::VmToolsApi.new
vm = 'vm_example' # String | Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
opts = {
  request_body: VCenter::VcenterVmToolsUpgrade.new # VcenterVmToolsUpgrade | 
}

begin
  #Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients should check the Tools status by calling Tools.get and examining Tools.Info.version-status and Tools.Info.run-state.
  api_instance.upgrade(vm, opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmToolsApi->upgrade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmToolsUpgrade**](VcenterVmToolsUpgrade.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



