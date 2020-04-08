# VSphereAutomation::VCenter::VcenterNamespaceManagementSoftwareClustersSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available_versions** | **Array&lt;String&gt;** | Set of versions available for upgrade. | 
**cluster** | **String** | Identifier for the cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. | 
**cluster_name** | **String** | Name of the cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource.name. | 
**current_version** | **String** | Current version of the cluster. | 
**desired_version** | **String** | Desired version the cluster will be upgraded to. If unset, the cluster upgrade is not in progress. | [optional] 
**last_upgraded_date** | **DateTime** | Date of last successful upgrade. If unset, the cluster has not yet been upgraded. | [optional] 
**state** | [**VcenterNamespaceManagementSoftwareClustersState**](VcenterNamespaceManagementSoftwareClustersState.md) |  | 


