# VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Info

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dhcp** | **BOOLEAN** | DHCP is on. | 
**autoconf** | **BOOLEAN** | Stateless Address Autoconfiguration (SLAAC) is on. | 
**addresses** | [**Array&lt;ApplianceNetworkingInterfacesIpv6AddressInfo&gt;**](ApplianceNetworkingInterfacesIpv6AddressInfo.md) | List of addresses with their origins and statuses. | 
**default_gateway** | **String** | The default gateway for static IP address assignment. This configures the global IPv6 default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces. | 
**configurable** | **BOOLEAN** | Is NIC configurable or not. | 


