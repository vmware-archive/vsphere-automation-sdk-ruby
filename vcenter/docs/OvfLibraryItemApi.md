# VSphereAutomation::VCenter::OvfLibraryItemApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](OvfLibraryItemApi.md#create) | **POST** /com/vmware/vcenter/ovf/library-item | Creates a library item in content library from a virtual machine or virtual appliance. &lt;p&gt; This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. &lt;/p&gt;
[**deploy**](OvfLibraryItemApi.md#deploy) | **POST** /com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action&#x3D;deploy | Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. &lt;p&gt; This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. &lt;/p&gt;
[**filter**](OvfLibraryItemApi.md#filter) | **POST** /com/vmware/vcenter/ovf/library-item/id:{ovf_library_item_id}?~action&#x3D;filter | Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. &lt;p&gt; This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. &lt;/p&gt;


# **create**
> VcenterOvfLibraryItemCreateResult create(vcenter_ovf_library_item_create)

Creates a library item in content library from a virtual machine or virtual appliance. <p> This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. </p>

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::OvfLibraryItemApi.new
vcenter_ovf_library_item_create = VSphereAutomation::VcenterOvfLibraryItemCreate.new # VcenterOvfLibraryItemCreate | 

begin
  #Creates a library item in content library from a virtual machine or virtual appliance. <p> This {@term operation} creates a library item in content library whose content is an OVF package derived from a source virtual machine or virtual appliance, using the supplied create specification. The OVF package may be stored as in a newly created library item or in an in an existing library item. For an existing library item whose content is updated by this {@term operation}, the original content is overwritten. </p>
  result = api_instance.create(vcenter_ovf_library_item_create)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling OvfLibraryItemApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_ovf_library_item_create** | [**VcenterOvfLibraryItemCreate**](VcenterOvfLibraryItemCreate.md)|  | 

### Return type

[**VcenterOvfLibraryItemCreateResult**](VcenterOvfLibraryItemCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **deploy**
> VcenterOvfLibraryItemDeployResult deploy(ovf_library_item_id, vcenter_ovf_library_item_deploy)

Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. <p> This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. </p>

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::OvfLibraryItemApi.new
ovf_library_item_id = 'ovf_library_item_id_example' # String | Identifier of the content library item containing the OVF package to be deployed.
vcenter_ovf_library_item_deploy = VSphereAutomation::VcenterOvfLibraryItemDeploy.new # VcenterOvfLibraryItemDeploy | 

begin
  #Deploys an OVF package stored in content library to a newly created virtual machine or virtual appliance. <p> This {@term operation} deploys an OVF package which is stored in the library item specified by {@param.name ovfLibraryItemId}. It uses the deployment specification in {@param.name deploymentSpec} to deploy the OVF package to the location specified by {@param.name target}. </p>
  result = api_instance.deploy(ovf_library_item_id, vcenter_ovf_library_item_deploy)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling OvfLibraryItemApi->deploy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ovf_library_item_id** | **String**| Identifier of the content library item containing the OVF package to be deployed. | 
 **vcenter_ovf_library_item_deploy** | [**VcenterOvfLibraryItemDeploy**](VcenterOvfLibraryItemDeploy.md)|  | 

### Return type

[**VcenterOvfLibraryItemDeployResult**](VcenterOvfLibraryItemDeployResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **filter**
> VcenterOvfLibraryItemFilterResult filter(ovf_library_item_id, vcenter_ovf_library_item_filter)

Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. <p> This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. </p>

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::OvfLibraryItemApi.new
ovf_library_item_id = 'ovf_library_item_id_example' # String | Identifier of the content library item containing the OVF package to query.
vcenter_ovf_library_item_filter = VSphereAutomation::VcenterOvfLibraryItemFilter.new # VcenterOvfLibraryItemFilter | 

begin
  #Queries an OVF package stored in content library to retrieve information to use when deploying the package. See {@link #deploy}. <p> This {@term operation} retrieves information from the descriptor of the OVF package stored in the library item specified by {@param.name ovfLibraryItemId}. The information returned by the {@term operation} can be used to populate the deployment specification (see {@link ResourcePoolDeploymentSpec} when deploying the OVF package to the deployment target specified by {@param.name target}. </p>
  result = api_instance.filter(ovf_library_item_id, vcenter_ovf_library_item_filter)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling OvfLibraryItemApi->filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ovf_library_item_id** | **String**| Identifier of the content library item containing the OVF package to query. | 
 **vcenter_ovf_library_item_filter** | [**VcenterOvfLibraryItemFilter**](VcenterOvfLibraryItemFilter.md)|  | 

### Return type

[**VcenterOvfLibraryItemFilterResult**](VcenterOvfLibraryItemFilterResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



