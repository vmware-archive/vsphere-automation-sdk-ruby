# VSphereAutomation::VCenter::VmTemplateLibraryItemsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmTemplateLibraryItemsApi.md#create) | **POST** /vcenter/vm-template/library-items | Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
[**deploy**](VmTemplateLibraryItemsApi.md#deploy) | **POST** /vcenter/vm-template/library-items/{template_library_item}?action&#x3D;deploy | Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
[**get**](VmTemplateLibraryItemsApi.md#get) | **GET** /vcenter/vm-template/library-items/{template_library_item} | Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}


# **create**
> VcenterVmTemplateLibraryItemsCreateResult create(vcenter_vm_template_library_items_create)

Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsApi.new
vcenter_vm_template_library_items_create = VSphereAutomation::VcenterVmTemplateLibraryItemsCreate.new # VcenterVmTemplateLibraryItemsCreate | 

begin
  #Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
  result = api_instance.create(vcenter_vm_template_library_items_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_vm_template_library_items_create** | [**VcenterVmTemplateLibraryItemsCreate**](VcenterVmTemplateLibraryItemsCreate.md)|  | 

### Return type

[**VcenterVmTemplateLibraryItemsCreateResult**](VcenterVmTemplateLibraryItemsCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **deploy**
> VcenterVmTemplateLibraryItemsDeployResult deploy(template_library_item, vcenter_vm_template_library_items_deploy)

Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsApi.new
template_library_item = 'template_library_item_example' # String | identifier of the content library item containing the source virtual machine template to be deployed.
vcenter_vm_template_library_items_deploy = VSphereAutomation::VcenterVmTemplateLibraryItemsDeploy.new # VcenterVmTemplateLibraryItemsDeploy | 

begin
  #Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
  result = api_instance.deploy(template_library_item, vcenter_vm_template_library_items_deploy)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsApi->deploy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| identifier of the content library item containing the source virtual machine template to be deployed. | 
 **vcenter_vm_template_library_items_deploy** | [**VcenterVmTemplateLibraryItemsDeploy**](VcenterVmTemplateLibraryItemsDeploy.md)|  | 

### Return type

[**VcenterVmTemplateLibraryItemsDeployResult**](VcenterVmTemplateLibraryItemsDeployResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get**
> VcenterVmTemplateLibraryItemsResult get(template_library_item)

Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsApi.new
template_library_item = 'template_library_item_example' # String | identifier of the library item containing the virtual machine template.

begin
  #Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}
  result = api_instance.get(template_library_item)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| identifier of the library item containing the virtual machine template. | 

### Return type

[**VcenterVmTemplateLibraryItemsResult**](VcenterVmTemplateLibraryItemsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



