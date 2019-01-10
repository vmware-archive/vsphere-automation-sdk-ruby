# VSphereAutomation::VCenter::ResourcePoolApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ResourcePoolApi.md#get) | **GET** /vcenter/resource-pool/{resource_pool} | Retrieves information about the resource pool indicated by resourcePool.
[**list**](ResourcePoolApi.md#list) | **GET** /vcenter/resource-pool | Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.


# **get**
> VcenterResourcePoolResult get(resource_pool)

Retrieves information about the resource pool indicated by resourcePool.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::ResourcePoolApi.new
resource_pool = 'resource_pool_example' # String | Identifier of the resource pool for which information should be retrieved. The parameter must be an identifier for the resource type: ResourcePool.

begin
  #Retrieves information about the resource pool indicated by resourcePool.
  result = api_instance.get(resource_pool)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ResourcePoolApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_pool** | **String**| Identifier of the resource pool for which information should be retrieved. The parameter must be an identifier for the resource type: ResourcePool. | 

### Return type

[**VcenterResourcePoolResult**](VcenterResourcePoolResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterResourcePoolListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::ResourcePoolApi.new
opts = {
  filter_resource_pools: ['filter_resource_pools_example'], # Array<String> | Identifiers of resource pools that can match the filter. If unset or empty, resource pools with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
  filter_names: ['filter_names_example'], # Array<String> | Names that resource pools must have to match the filter (see ResourcePool.Info.name). If unset or empty, resource pools with any name match the filter.
  filter_parent_resource_pools: ['filter_parent_resource_pools_example'], # Array<String> | Resource pools that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
  filter_datacenters: ['filter_datacenters_example'], # Array<String> | Datacenters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
  filter_hosts: ['filter_hosts_example'], # Array<String> | Hosts that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
  filter_clusters: ['filter_clusters_example'] # Array<String> | Clusters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ResourcePoolApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_resource_pools** | [**Array&lt;String&gt;**](String.md)| Identifiers of resource pools that can match the filter. If unset or empty, resource pools with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that resource pools must have to match the filter (see ResourcePool.Info.name). If unset or empty, resource pools with any name match the filter. | [optional] 
 **filter_parent_resource_pools** | [**Array&lt;String&gt;**](String.md)| Resource pools that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool. | [optional] 
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Datacenters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 
 **filter_hosts** | [**Array&lt;String&gt;**](String.md)| Hosts that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | [optional] 
 **filter_clusters** | [**Array&lt;String&gt;**](String.md)| Clusters that must contain the resource pool for the resource pool to match the filter. If unset or empty, resource pools in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 

### Return type

[**VcenterResourcePoolListResult**](VcenterResourcePoolListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



