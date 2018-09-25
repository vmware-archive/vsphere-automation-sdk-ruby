# VSphereAutomation::VCenter::VcenterClusterFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clusters** | **Array&lt;String&gt;** | Identifiers of clusters that can match the filter. If unset or empty, clusters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
**names** | **Array&lt;String&gt;** | Names that clusters must have to match the filter (see Cluster.Info.name). If unset or empty, clusters with any name match the filter. | [optional] 
**folders** | **Array&lt;String&gt;** | Folders that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
**datacenters** | **Array&lt;String&gt;** | Datacenters that must contain the cluster for the cluster to match the filter. If unset or empty, clusters in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 


