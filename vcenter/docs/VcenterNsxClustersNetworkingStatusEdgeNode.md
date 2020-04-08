# VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusEdgeNode

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config** | [**VcenterNsxClustersNetworkingStatusConfig**](VcenterNsxClustersNetworkingStatusConfig.md) |  | 
**health** | [**VcenterNsxClustersNetworkingStatusHealth**](VcenterNsxClustersNetworkingStatusHealth.md) |  | 
**name** | **String** | Name of the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**node** | **String** | ID of the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when ID is not present. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine. | [optional] 
**uplink_name** | **String** | Name of the uplink network interface if the NSX Edge node is configured with the uplink network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be empty if the NSX Edge node is not configured with the uplink network. | [optional] 


