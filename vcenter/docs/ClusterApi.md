# VSphereAutomation::VCenter::ClusterApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ClusterApi.md#create) | **POST** /rest/vcenter/cluster | Create a new cluster in the vCenter inventory. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](ClusterApi.md#delete) | **DELETE** /rest/vcenter/cluster/{cluster} | Delete an empty cluster from the vCenter Server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**get**](ClusterApi.md#get) | **GET** /rest/vcenter/cluster/{cluster} | Retrieves information about the cluster corresponding to cluster.
[**list**](ClusterApi.md#list) | **GET** /rest/vcenter/cluster | Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.


# **create**
> VcenterClusterCreateResp create(request_body)

Create a new cluster in the vCenter inventory. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterApi.new
request_body = VCenter::VcenterClusterCreate.new # VcenterClusterCreate | 

begin
  #Create a new cluster in the vCenter inventory. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterClusterCreate**](VcenterClusterCreate.md)|  | 

### Return type

[**VcenterClusterCreateResp**](VcenterClusterCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(cluster)

Delete an empty cluster from the vCenter Server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::ClusterApi.new
cluster = 'cluster_example' # String | Identifier of the cluster to be deleted. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Delete an empty cluster from the vCenter Server. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(cluster)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster to be deleted. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get**
> VcenterClusterResp get(cluster)

Retrieves information about the cluster corresponding to cluster.

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

api_instance = VSphereAutomation::VCenter::ClusterApi.new
cluster = 'cluster_example' # String | Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.

begin
  #Retrieves information about the cluster corresponding to cluster.
  result = api_instance.get(cluster)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | **String**| Identifier of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource. | 

### Return type

[**VcenterClusterResp**](VcenterClusterResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> VcenterClusterListResp list(opts)

Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.

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

api_instance = VSphereAutomation::VCenter::ClusterApi.new
opts = {
  filter_clusters: ['filter_clusters_example'], # Array<String> | Identifiers of clusters that can match the filter. If unset or empty, clusters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
  filter_names: ['filter_names_example'], # Array<String> | Names that clusters must have to match the filter (see Cluster.Info.name). If unset or empty, clusters with any name match the filter.
  filter_folders: ['filter_folders_example'], # Array<String> | Folders that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  filter_datacenters: ['filter_datacenters_example'] # Array<String> | Datacenters that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
}

begin
  #Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling ClusterApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_clusters** | [**Array&lt;String&gt;**](String.md)| Identifiers of clusters that can match the filter. If unset or empty, clusters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
 **filter_names** | [**Array&lt;String&gt;**](String.md)| Names that clusters must have to match the filter (see Cluster.Info.name). If unset or empty, clusters with any name match the filter. | [optional] 
 **filter_folders** | [**Array&lt;String&gt;**](String.md)| Folders that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
 **filter_datacenters** | [**Array&lt;String&gt;**](String.md)| Datacenters that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 

### Return type

[**VcenterClusterListResp**](VcenterClusterListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



