# VSphereAutomation::VCenter::VcenterTopologyNodesSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_affinity** | **String** | Identifier of the affinitized Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the affinitized node. This field is optional and it is only relevant when the value of Nodes.Summary.type is VCSA_EXTERNAL. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.VCenter.name. | [optional] 
**node** | **String** | Identifier for the vCenter or Platform Services Controller node. Identifier can be either IP address or DNS resolvable name of the node. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.VCenter.name. | 
**replication_partners** | **Array&lt;String&gt;** | List of replication partners&#39; node identifiers. Identifiers can be either IP address or DNS resolvable name of the partner node. This field is optional and it is only relevant when the value of Nodes.Summary.type is one of VCSA_EMBEDDED or PSC_EXTERNAL. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.VCenter.name. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.VCenter.name. | [optional] 
**type** | [**VcenterTopologyNodesApplianceType**](VcenterTopologyNodesApplianceType.md) |  | 


