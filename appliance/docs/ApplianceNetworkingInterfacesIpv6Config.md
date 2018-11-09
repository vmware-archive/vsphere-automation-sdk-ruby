# VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Config

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dhcp** | **BOOLEAN** | An address will be assigned by a DHCP server. | 
**autoconf** | **BOOLEAN** | An address will be assigned by Stateless Address Autoconfiguration (SLAAC). | 
**addresses** | [**Array&lt;ApplianceNetworkingInterfacesIpv6Address&gt;**](ApplianceNetworkingInterfacesIpv6Address.md) | The list of addresses to be statically assigned. | 
**default_gateway** | **String** | The default gateway for static IP address assignment. This configures the global IPv6 default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces. | 


