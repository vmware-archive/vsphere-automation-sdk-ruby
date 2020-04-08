# VSphereAutomation::VCenter::VmTagsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](VmTagsApi.md#add) | **POST** /rest/vcenter/vm/{vm}/tags?action&#x3D;add | Attaches tags to a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](VmTagsApi.md#get) | **GET** /rest/vcenter/vm/{vm}/tags | Lists all tags attached to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**remove**](VmTagsApi.md#remove) | **POST** /rest/vcenter/vm/{vm}/tags?action&#x3D;remove | Detaches tags from a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **add**
> VcenterVmTagsAddResp add(vm, request_body)

Attaches tags to a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmTagsApi.new
vm = 'vm_example' # String | Identifier of the virtual machine to which the tags will be assigned. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmTagsAdd.new # VcenterVmTagsAdd | 

begin
  #Attaches tags to a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.add(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTagsApi->add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine to which the tags will be assigned. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmTagsAdd**](VcenterVmTagsAdd.md)|  | 

### Return type

[**VcenterVmTagsAddResp**](VcenterVmTagsAddResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterVmTagsResp get(vm)

Lists all tags attached to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmTagsApi.new
vm = 'vm_example' # String | Identifier of the virtual machine to be queried for its assigned tags. The parameter must be an identifier for the resource type: VirtualMachine.

begin
  #Lists all tags attached to the virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.get(vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTagsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine to be queried for its assigned tags. The parameter must be an identifier for the resource type: VirtualMachine. | 

### Return type

[**VcenterVmTagsResp**](VcenterVmTagsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove**
> VcenterVmTagsRemoveResp remove(vm, request_body)

Detaches tags from a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmTagsApi.new
vm = 'vm_example' # String | Identifier of the virtual machine from which the tags will be removed. The parameter must be an identifier for the resource type: VirtualMachine.
request_body = VCenter::VcenterVmTagsRemove.new # VcenterVmTagsRemove | 

begin
  #Detaches tags from a virtual machine. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.remove(vm, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTagsApi->remove: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vm** | **String**| Identifier of the virtual machine from which the tags will be removed. The parameter must be an identifier for the resource type: VirtualMachine. | 
 **request_body** | [**VcenterVmTagsRemove**](VcenterVmTagsRemove.md)|  | 

### Return type

[**VcenterVmTagsRemoveResp**](VcenterVmTagsRemoveResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



