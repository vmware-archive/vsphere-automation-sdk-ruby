# VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_in**](VmTemplateLibraryItemsCheckOutsApi.md#check_in) | **POST** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm}?action&#x3D;check-in | Checks in a virtual machine into the library item. This {@term operation} updates the library item to contain the virtual machine being checked in as a template. This template becomes the latest version of the library item. The previous virtual machine template contained in the library item is available as a backup and its information can be queried using the {@name Versions} {@term service}. At most one previous version of a virtual machine template is retained in the library item.
[**check_out**](VmTemplateLibraryItemsCheckOutsApi.md#check_out) | **POST** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs?action&#x3D;check-out | Checks out a library item containing a virtual machine template. This {@term operation} makes a copy of the source virtual machine template contained in the library item as a virtual machine. The virtual machine is copied with the same storage specification as the source virtual machine template. Changes to the checked out virtual machine do not affect the virtual machine template contained in the library item. To save these changes back into the library item, {@link #checkIn} the virtual machine. To discard the changes, {@link #delete} the virtual machine.
[**delete**](VmTemplateLibraryItemsCheckOutsApi.md#delete) | **DELETE** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm} | Deletes the checked out virtual machine.
[**get**](VmTemplateLibraryItemsCheckOutsApi.md#get) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs/{vm} | Returns the information about a checked out virtual machine.
[**list**](VmTemplateLibraryItemsCheckOutsApi.md#list) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/check-outs | Returns commonly used information about the virtual machines that are checked out of the library item.


# **check_in**
> VcenterVmTemplateLibraryItemsCheckOutsCheckInResp check_in(template_library_item, vm, opts)

Checks in a virtual machine into the library item. This {@term operation} updates the library item to contain the virtual machine being checked in as a template. This template becomes the latest version of the library item. The previous virtual machine template contained in the library item is available as a backup and its information can be queried using the {@name Versions} {@term service}. At most one previous version of a virtual machine template is retained in the library item.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the content library item in which the virtual machine is checked in.
vm = 'vm_example' # String | Identifier of the virtual machine to check into the library item.
opts = {
  request_body: VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckIn.new # VcenterVmTemplateLibraryItemsCheckOutsCheckIn | 
}

begin
  #Checks in a virtual machine into the library item. This {@term operation} updates the library item to contain the virtual machine being checked in as a template. This template becomes the latest version of the library item. The previous virtual machine template contained in the library item is available as a backup and its information can be queried using the {@name Versions} {@term service}. At most one previous version of a virtual machine template is retained in the library item.
  result = api_instance.check_in(template_library_item, vm, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsCheckOutsApi->check_in: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the content library item in which the virtual machine is checked in. | 
 **vm** | **String**| Identifier of the virtual machine to check into the library item. | 
 **request_body** | [**VcenterVmTemplateLibraryItemsCheckOutsCheckIn**](VcenterVmTemplateLibraryItemsCheckOutsCheckIn.md)|  | [optional] 

### Return type

[**VcenterVmTemplateLibraryItemsCheckOutsCheckInResp**](VcenterVmTemplateLibraryItemsCheckOutsCheckInResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_out**
> VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp check_out(template_library_item, opts)

Checks out a library item containing a virtual machine template. This {@term operation} makes a copy of the source virtual machine template contained in the library item as a virtual machine. The virtual machine is copied with the same storage specification as the source virtual machine template. Changes to the checked out virtual machine do not affect the virtual machine template contained in the library item. To save these changes back into the library item, {@link #checkIn} the virtual machine. To discard the changes, {@link #delete} the virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the content library item containing the source virtual machine template to be checked out.
opts = {
  request_body: VCenter::VcenterVmTemplateLibraryItemsCheckOutsCheckOut.new # VcenterVmTemplateLibraryItemsCheckOutsCheckOut | 
}

begin
  #Checks out a library item containing a virtual machine template. This {@term operation} makes a copy of the source virtual machine template contained in the library item as a virtual machine. The virtual machine is copied with the same storage specification as the source virtual machine template. Changes to the checked out virtual machine do not affect the virtual machine template contained in the library item. To save these changes back into the library item, {@link #checkIn} the virtual machine. To discard the changes, {@link #delete} the virtual machine.
  result = api_instance.check_out(template_library_item, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsCheckOutsApi->check_out: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the content library item containing the source virtual machine template to be checked out. | 
 **request_body** | [**VcenterVmTemplateLibraryItemsCheckOutsCheckOut**](VcenterVmTemplateLibraryItemsCheckOutsCheckOut.md)|  | [optional] 

### Return type

[**VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp**](VcenterVmTemplateLibraryItemsCheckOutsCheckOutResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(template_library_item, vm)

Deletes the checked out virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the VM template library item.
vm = 'vm_example' # String | Identifier of the checked out virtual machine to delete.

begin
  #Deletes the checked out virtual machine.
  api_instance.delete(template_library_item, vm)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsCheckOutsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the VM template library item. | 
 **vm** | **String**| Identifier of the checked out virtual machine to delete. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmTemplateLibraryItemsCheckOutsResp get(template_library_item, vm)

Returns the information about a checked out virtual machine.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the VM template library item.
vm = 'vm_example' # String | Identifier of the checked out virtual machine.

begin
  #Returns the information about a checked out virtual machine.
  result = api_instance.get(template_library_item, vm)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsCheckOutsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the VM template library item. | 
 **vm** | **String**| Identifier of the checked out virtual machine. | 

### Return type

[**VcenterVmTemplateLibraryItemsCheckOutsResp**](VcenterVmTemplateLibraryItemsCheckOutsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmTemplateLibraryItemsCheckOutsListResp list(template_library_item)

Returns commonly used information about the virtual machines that are checked out of the library item.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsCheckOutsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the VM template library item.

begin
  #Returns commonly used information about the virtual machines that are checked out of the library item.
  result = api_instance.list(template_library_item)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsCheckOutsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the VM template library item. | 

### Return type

[**VcenterVmTemplateLibraryItemsCheckOutsListResp**](VcenterVmTemplateLibraryItemsCheckOutsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



