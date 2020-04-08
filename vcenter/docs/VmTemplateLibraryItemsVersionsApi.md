# VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](VmTemplateLibraryItemsVersionsApi.md#delete) | **DELETE** /rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version} | Deletes the virtual machine template contained in the library item at the specified version.
[**get**](VmTemplateLibraryItemsVersionsApi.md#get) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version} | Returns information about the live version of a library item containing a virtual machine template.
[**list**](VmTemplateLibraryItemsVersionsApi.md#list) | **GET** /rest/vcenter/vm-template/library-items/{template_library_item}/versions | Returns commonly used information about the live versions of a virtual machine template library item.
[**rollback**](VmTemplateLibraryItemsVersionsApi.md#rollback) | **POST** /rest/vcenter/vm-template/library-items/{template_library_item}/versions/{version}?action&#x3D;rollback | Rollbacks a library item containing a virtual machine template to a previous version. The virtual machine template at the specified version becomes the latest virtual machine template with a new version identifier.


# **delete**
> delete(template_library_item, version)

Deletes the virtual machine template contained in the library item at the specified version.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the VM template library item.
version = 'version_example' # String | Version of the library item to delete.

begin
  #Deletes the virtual machine template contained in the library item at the specified version.
  api_instance.delete(template_library_item, version)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsVersionsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the VM template library item. | 
 **version** | **String**| Version of the library item to delete. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterVmTemplateLibraryItemsVersionsResp get(template_library_item, version)

Returns information about the live version of a library item containing a virtual machine template.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the VM template library item.
version = 'version_example' # String | Version of the library item.

begin
  #Returns information about the live version of a library item containing a virtual machine template.
  result = api_instance.get(template_library_item, version)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsVersionsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the VM template library item. | 
 **version** | **String**| Version of the library item. | 

### Return type

[**VcenterVmTemplateLibraryItemsVersionsResp**](VcenterVmTemplateLibraryItemsVersionsResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterVmTemplateLibraryItemsVersionsListResp list(template_library_item)

Returns commonly used information about the live versions of a virtual machine template library item.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the VM template library item.

begin
  #Returns commonly used information about the live versions of a virtual machine template library item.
  result = api_instance.list(template_library_item)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsVersionsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the VM template library item. | 

### Return type

[**VcenterVmTemplateLibraryItemsVersionsListResp**](VcenterVmTemplateLibraryItemsVersionsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rollback**
> VcenterVmTemplateLibraryItemsVersionsRollbackResp rollback(template_library_item, version, opts)

Rollbacks a library item containing a virtual machine template to a previous version. The virtual machine template at the specified version becomes the latest virtual machine template with a new version identifier.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsVersionsApi.new
template_library_item = 'template_library_item_example' # String | Identifier of the VM template library item.
version = 'version_example' # String | Version of the library item to rollback.
opts = {
  request_body: VCenter::VcenterVmTemplateLibraryItemsVersionsRollback.new # VcenterVmTemplateLibraryItemsVersionsRollback | 
}

begin
  #Rollbacks a library item containing a virtual machine template to a previous version. The virtual machine template at the specified version becomes the latest virtual machine template with a new version identifier.
  result = api_instance.rollback(template_library_item, version, opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsVersionsApi->rollback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| Identifier of the VM template library item. | 
 **version** | **String**| Version of the library item to rollback. | 
 **request_body** | [**VcenterVmTemplateLibraryItemsVersionsRollback**](VcenterVmTemplateLibraryItemsVersionsRollback.md)|  | [optional] 

### Return type

[**VcenterVmTemplateLibraryItemsVersionsRollbackResp**](VcenterVmTemplateLibraryItemsVersionsRollbackResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



