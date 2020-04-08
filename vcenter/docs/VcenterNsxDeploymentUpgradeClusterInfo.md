# VSphereAutomation::VCenter::VcenterNsxDeploymentUpgradeClusterInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_version** | **String** | Current NSX version. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**display_name** | **String** | Name of the cluster as displayed in vSphere client. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**display_status** | [**VcenterNsxDeploymentUpgradeClusterStatus**](VcenterNsxDeploymentUpgradeClusterStatus.md) |  | 
**id** | **String** | Unique identifier of the given cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. | 
**messages** | [**Array&lt;VcenterNsxDeploymentUpgradeMessage&gt;**](VcenterNsxDeploymentUpgradeMessage.md) | The messages corresponding to the cluster, this field includes the upgrade as well as the precehck messages based on the current operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if messages are present for the current cluster. | [optional] 
**number_of_edges** | **Integer** | The total number of edges present in the cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if data is available. | [optional] 
**number_of_edges_upgraded** | **Integer** | The total number of edges upgraded in the cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if data is available. | [optional] 
**number_of_hosts** | **Integer** | The total number of hosts present in the cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if data is available. | [optional] 
**number_of_hosts_upgraded** | **Integer** | The total number of hosts upgraded in the cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if data is available. | [optional] 
**progress** | **Float** | The progress of the operation in percentage. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Only set if percentage progress is available. | [optional] 


