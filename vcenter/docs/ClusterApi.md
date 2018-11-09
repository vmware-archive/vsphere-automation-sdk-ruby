# VSphereAutomation::VCenter::ClusterApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ClusterApi.md#get) | **GET** /vcenter/cluster/{cluster} | Retrieves information about the cluster corresponding to cluster.
[**list**](ClusterApi.md#list) | **GET** /vcenter/cluster | Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.


# **get**
> VcenterClusterResult get(cluster)

Retrieves information about the cluster corresponding to cluster.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterClusterResult**](VcenterClusterResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> VcenterClusterListResult list(opts)

Returns information about at most 1000 visible (subject to permission checks) clusters in vCenter matching the Cluster.FilterSpec.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

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

[**VcenterClusterListResult**](VcenterClusterListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



