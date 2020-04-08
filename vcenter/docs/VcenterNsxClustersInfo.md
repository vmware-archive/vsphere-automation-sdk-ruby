# VSphereAutomation::VCenter::VcenterNsxClustersInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dv_switch** | **String** | The vSphere Distributed Switch (VDS) used for hosts&#39; transport node configuration. All the hosts in the vSphere cluster would be connected to this VDS. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: DistributedVirtualSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: DistributedVirtualSwitch. | 
**dv_switch_name** | **String** | The name of the vSphere Distributed Switch. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset or empty when the name of Clusters.Info.dv-switch could not be fetched. | [optional] 
**overlay_network_info** | [**VcenterNsxClustersClusterOverlayNetworkInfo**](VcenterNsxClustersClusterOverlayNetworkInfo.md) |  | 


