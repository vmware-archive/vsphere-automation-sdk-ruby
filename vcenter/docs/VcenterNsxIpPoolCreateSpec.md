# VSphereAutomation::VCenter::VcenterNsxIpPoolCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cidr** | [**VcenterNsxIpv4Cidr**](VcenterNsxIpv4Cidr.md) |  | [optional] 
**gateway** | **String** | The IPv4 address of the gateway associated with the NSX IP pool. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**ip_range** | [**VcenterNsxIpv4Range**](VcenterNsxIpv4Range.md) |  | [optional] 
**name** | **String** | The ID(Name) of the NSX IP pool. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: nsx.pools.ip_pool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: nsx.pools.ip_pool. | 


