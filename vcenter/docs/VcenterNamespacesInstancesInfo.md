# VSphereAutomation::VCenter::VcenterNamespacesInstancesInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_list** | [**Array&lt;VcenterNamespacesInstancesAccess&gt;**](VcenterNamespacesInstancesAccess.md) | Access controls associated with the namespace. | 
**cluster** | **String** | Identifier for the cluster hosting the namespace. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. | 
**config_status** | [**VcenterNamespacesInstancesConfigStatus**](VcenterNamespacesInstancesConfigStatus.md) |  | 
**description** | **String** | Description of the namespace. | 
**messages** | [**Array&lt;VcenterNamespacesInstancesMessage&gt;**](VcenterNamespacesInstancesMessage.md) | Current set of messages associated with the object. | 
**resource_spec** | [**Object**](.md) | Quotas on the namespace resources. Refer to vcenter.namespace_management.NamespaceResourceOptions#get for the type of the value for this field. If unset, no resource constraints are associated with the namespace. | [optional] 
**stats** | [**VcenterNamespacesInstancesStats**](VcenterNamespacesInstancesStats.md) |  | 
**storage_specs** | [**Array&lt;VcenterNamespacesInstancesStorageSpec&gt;**](VcenterNamespacesInstancesStorageSpec.md) | Storage associated with the namespace. | 


