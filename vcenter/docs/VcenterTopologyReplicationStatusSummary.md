# VSphereAutomation::VCenter::VcenterTopologyReplicationStatusSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**change_lag** | **Integer** | Number of replication changes node is behind the replication partner. This field will be unset if the partner host or replication status is not available, i.e, if ReplicationStatus.Summary.partner-available or ReplicationStatus.Summary.status-available is false. | [optional] 
**node** | **String** | Identifier for the vCenter or Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the node. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.VCenter.name. | 
**partner_available** | **Boolean** | Indicates if the VMware Directory Service on partner is reachable or not. | 
**replicating** | **Boolean** | Indicates if node is processing replication changes from the replication partner. This field will be unset if the partner host or replication status is not available, i.e, if ReplicationStatus.Summary.partner-available or ReplicationStatus.Summary.status-available is false. | [optional] 
**replication_partner** | **String** | Identifier for the vCenter or Platform Services Controller replication partner. Identifier can be either IP address or DNS resolvable name of the replication partner. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.VCenter.name. | 
**status_available** | **Boolean** | Indicates if the replication status for the node with respect to replication partner can be retrieved or not. | 


