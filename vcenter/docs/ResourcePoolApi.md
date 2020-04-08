# VSphereAutomation::VCenter::ResourcePoolApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ResourcePoolApi.md#create) | **POST** /rest/vcenter/resource-pool | Creates a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the attribute ResourcePool.CreateSpec.parent requires Resource.CreatePool.  
[**delete**](ResourcePoolApi.md#delete) | **DELETE** /rest/vcenter/resource-pool/{resource_pool} | Deletes a resource pool.
[**get**](ResourcePoolApi.md#get) | **GET** /rest/vcenter/resource-pool/{resource_pool} | Retrieves information about the resource pool indicated by resourcePool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires System.Read.  
[**list**](ResourcePoolApi.md#list) | **GET** /rest/vcenter/resource-pool | Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.
[**update**](ResourcePoolApi.md#update) | **PATCH** /rest/vcenter/resource-pool/{resource_pool} | Updates the configuration of a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires Resource.EditPool.  


# **create**
> VcenterResourcePoolCreateResp create(request_body)

Creates a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the attribute ResourcePool.CreateSpec.parent requires Resource.CreatePool.  

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

api_instance = VSphereAutomation::VCenter::ResourcePoolApi.new
request_body = VCenter::VcenterResourcePoolCreate.new # VcenterResourcePoolCreate | 

begin
  #Creates a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the attribute ResourcePool.CreateSpec.parent requires Resource.CreatePool.  
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ResourcePoolApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterResourcePoolCreate**](VcenterResourcePoolCreate.md)|  | 

### Return type

[**VcenterResourcePoolCreateResp**](VcenterResourcePoolCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(resource_pool)

Deletes a resource pool.

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

api_instance = VSphereAutomation::VCenter::ResourcePoolApi.new
resource_pool = 'resource_pool_example' # String | Identifier of the resource pool to be deleted. The parameter must be an identifier for the resource type: ResourcePool.

begin
  #Deletes a resource pool.
  api_instance.delete(resource_pool)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ResourcePoolApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_pool** | **String**| Identifier of the resource pool to be deleted. The parameter must be an identifier for the resource type: ResourcePool. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterResourcePoolResp get(resource_pool)

Retrieves information about the resource pool indicated by resourcePool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires System.Read.  

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

api_instance = VSphereAutomation::VCenter::ResourcePoolApi.new
resource_pool = 'resource_pool_example' # String | Identifier of the resource pool for which information should be retrieved. The parameter must be an identifier for the resource type: ResourcePool.

begin
  #Retrieves information about the resource pool indicated by resourcePool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires System.Read.  
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

[**VcenterResourcePoolResp**](VcenterResourcePoolResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterResourcePoolListResp list(opts)

Returns information about at most 1000 visible (subject to permission checks) resource pools in vCenter matching the ResourcePool.FilterSpec.

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

[**VcenterResourcePoolListResp**](VcenterResourcePoolListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> update(resource_pool, request_body)

Updates the configuration of a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires Resource.EditPool.  

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

api_instance = VSphereAutomation::VCenter::ResourcePoolApi.new
resource_pool = 'resource_pool_example' # String | Identifier of the resource pool. The parameter must be an identifier for the resource type: ResourcePool.
request_body = VCenter::VcenterResourcePoolUpdate.new # VcenterResourcePoolUpdate | 

begin
  #Updates the configuration of a resource pool. if you do not have all of the privileges described as follows:     -  The resource ResourcePool referenced by the parameter resourcePool requires Resource.EditPool.  
  api_instance.update(resource_pool, request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ResourcePoolApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_pool** | **String**| Identifier of the resource pool. The parameter must be an identifier for the resource type: ResourcePool. | 
 **request_body** | [**VcenterResourcePoolUpdate**](VcenterResourcePoolUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



