# VSphereAutomation::VCenter::VcenterNsxClustersNetworkingStatusLogicalRouter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config** | [**VcenterNsxClustersNetworkingStatusConfig**](VcenterNsxClustersNetworkingStatusConfig.md) |  | 
**edge_cluster_name** | **String** | Name of the NSX Edge cluster. This field should be the same as the name field in the EdgeCluster structure. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field will be empty when the name is not present. | [optional] 
**name** | **String** | Name of the logical router. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when name is not present. | [optional] 
**type** | **String** | Type of the logical router. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when type is not present. | [optional] 
**uplink_edges** | [**Array&lt;VcenterNsxClustersNetworkingStatusUplinkEdge&gt;**](VcenterNsxClustersNetworkingStatusUplinkEdge.md) | Information about the uplink NSX Edge node(s). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


