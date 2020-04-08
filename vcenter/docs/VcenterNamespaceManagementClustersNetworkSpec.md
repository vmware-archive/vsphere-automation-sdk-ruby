# VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNetworkSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address_range** | [**VcenterNamespaceManagementClustersIpv4Range**](VcenterNamespaceManagementClustersIpv4Range.md) |  | [optional] 
**floating_ip** | **String** | Optionally specify the Floating IP used by the HA master cluster in the DHCP case. This field is optional and it is only relevant when the value of Clusters.NetworkSpec.mode is DHCP. | [optional] 
**mode** | [**VcenterNamespaceManagementClustersNetworkSpecIpv4Mode**](VcenterNamespaceManagementClustersNetworkSpecIpv4Mode.md) |  | 
**network** | **String** | Identifier for the network. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network. | 


