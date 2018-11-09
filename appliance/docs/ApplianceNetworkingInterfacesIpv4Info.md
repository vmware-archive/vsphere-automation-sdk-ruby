# VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv4Info

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configurable** | **BOOLEAN** | The specified network interface is configurable or not. | 
**mode** | [**ApplianceNetworkingInterfacesIpv4Mode**](ApplianceNetworkingInterfacesIpv4Mode.md) |  | 
**address** | **String** | The IPv4 address, for example, \&quot;10.20.80.191\&quot;. | [optional] 
**prefix** | **Integer** | The IPv4 CIDR prefix, for example, 24.  See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion. | [optional] 
**default_gateway** | **String** | The IPv4 address of the default gateway. This configures the global default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces. | [optional] 


