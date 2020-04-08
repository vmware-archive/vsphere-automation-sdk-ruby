# VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6Config

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addresses** | [**Array&lt;ApplianceTechpreviewNetworkingIpv6IPv6Address&gt;**](ApplianceTechpreviewNetworkingIpv6IPv6Address.md) | A list of addresses to be statically assigned. | 
**autoconf** | **Boolean** | Address is assigned by Stateless Address Autoconfiguration (SLAAC). | 
**default_gateway** | **String** | Default gateway for static IP address assignment. This configures the global IPv6 default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces. | 
**dhcp** | **Boolean** | Address assigned by a DHCP server. | 
**interface_name** | **String** | Network interface, for example, \&quot;nic0\&quot; to configure. | 


