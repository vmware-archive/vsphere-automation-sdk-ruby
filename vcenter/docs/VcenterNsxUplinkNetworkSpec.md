# VSphereAutomation::VCenter::VcenterNsxUplinkNetworkSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gateway** | **String** | Gateway IP address for the interface on the network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**subnet_mask** | **String** | Subnet mask for the interface on the network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**vlan** | **Integer** | The VLAN identifier for the network. Possible values:     -  A value from 1 to 4094 specifies a VLAN ID for the network.    -  Any other value (including 0) is invalid.  . Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is currently required. It is optional for future development. | [optional] 


