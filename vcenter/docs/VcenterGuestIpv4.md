# VSphereAutomation::VCenter::VcenterGuestIpv4

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gateways** | **Array&lt;String&gt;** | Gateways for the IPv4 address. If unset, no gateways are set. | [optional] 
**ip_address** | **String** | The static IPv4 address This field is optional and it is only relevant when the value of Ipv4.type is STATIC. | [optional] 
**prefix** | **Integer** | The IPv4 CIDR prefix, for example, 24. See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion. This field is optional and it is only relevant when the value of Ipv4.type is STATIC. | [optional] 
**type** | [**VcenterGuestIpv4Type**](VcenterGuestIpv4Type.md) |  | 


