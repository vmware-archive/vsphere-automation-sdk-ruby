# VSphereAutomation::VCenter::VcenterNsxEdgeOverlayNetworkSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**create_ip_pool** | **Boolean** | Specifies if a new NSX IP pool must be used for IP address allocation for this network interface. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**ip_pool** | **String** | ID(Name) of the existing NSX IP pool. If EdgeOverlayNetworkSpec.create-ip-pool is set to false, then this field contains the ID of an existing NSX IP pool to be used for the network interface. The IP address from this NSX IP pool is assigned to the tunnel endpoint on each NSX Edge node in the vSphere cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when EdgeOverlayNetworkSpec.create-ip-pool is true. If it is set when EdgeOverlayNetworkSpec.create-ip-pool is set to true, then it is ignored. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: nsx.pools.ip_pool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: nsx.pools.ip_pool. | [optional] 
**ip_pool_spec** | [**VcenterNsxIpPoolCreateSpec**](VcenterNsxIpPoolCreateSpec.md) |  | [optional] 
**vlan** | **Integer** | The VLAN identifier for this network. Possible values:     -  A value from 1 to 4094 specifies a VLAN ID for the network.    -  Any other value (including 0) is invalid.  . Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is currently required. It is optional for future development. | [optional] 


