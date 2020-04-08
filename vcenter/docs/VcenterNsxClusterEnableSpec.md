# VSphereAutomation::VCenter::VcenterNsxClusterEnableSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dv_switch** | **String** | The vSphere Distributed Switch (VDS) to be used for hosts&#39; transport node configuration. All the hosts in the vSphere cluster must be connected to this VDS. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: DistributedVirtualSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: DistributedVirtualSwitch. | 
**overlay_network** | [**VcenterNsxClusterOverlayNetworkSpec**](VcenterNsxClusterOverlayNetworkSpec.md) |  | 


