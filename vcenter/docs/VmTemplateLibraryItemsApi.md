# VSphereAutomation::VCenter::VmTemplateLibraryItemsApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmTemplateLibraryItemsApi.md#create) | **POST** /vcenter/vm-template/library-items | Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
[**deploy**](VmTemplateLibraryItemsApi.md#deploy) | **POST** /vcenter/vm-template/library-items/{template_library_item} | Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
[**get**](VmTemplateLibraryItemsApi.md#get) | **GET** /vcenter/vm-template/library-items/{template_library_item} | Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}


# **create**
> VcenterVmTemplateLibraryItemsCreateResult create(request_body)

Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsApi.new
request_body = VCenter::VcenterVmTemplateLibraryItemsCreate.new # VcenterVmTemplateLibraryItemsCreate | 

begin
  #Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVmTemplateLibraryItemsCreate**](VcenterVmTemplateLibraryItemsCreate.md)|  | 

### Return type

[**VcenterVmTemplateLibraryItemsCreateResult**](VcenterVmTemplateLibraryItemsCreateResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deploy**
> VcenterVmTemplateLibraryItemsDeployResult deploy(template_library_item, action, request_body)

Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.

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

api_instance = VSphereAutomation::VCenter::VmTemplateLibraryItemsApi.new
template_library_item = 'template_library_item_example' # String | identifier of the content library item containing the source virtual machine template to be deployed.
action = 'action_example' # String | action=deploy
request_body = VCenter::VcenterVmTemplateLibraryItemsDeploy.new # VcenterVmTemplateLibraryItemsDeploy | 

begin
  #Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
  result = api_instance.deploy(template_library_item, action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmTemplateLibraryItemsApi->deploy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_library_item** | **String**| identifier of the content library item containing the source virtual machine template to be deployed. | 
 **action** | **String**| action&#x3D;deploy | 
 **request_body** | [**VcenterVmTemplateLibraryItemsDeploy**](VcenterVmTemplateLibraryItemsDeploy.md)|  | 

### Return type

[**VcenterVmTemplateLibraryItemsDeployResult**](VcenterVmTemplateLibraryItemsDeployResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get**
> VcenterVmTemplateLibraryItemsResult get(template_library_item)

Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



