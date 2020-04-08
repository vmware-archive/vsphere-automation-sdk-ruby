# VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv6IPv6ConfigReadOnly

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addresses** | [**Array&lt;ApplianceTechpreviewNetworkingIpv6IPv6AddressReadOnly&gt;**](ApplianceTechpreviewNetworkingIpv6IPv6AddressReadOnly.md) | A list of all addresses assigned to this interface.  The origin field of each address determines how the address was assigned, for example, statically, by DHCP, SLAAC. | 
**autoconf** | **Boolean** | Address is assigned by Stateless Address Autoconfiguration (SLAAC). | 
**default_gateway** | **String** | Default gateway. This configures the global IPv6 default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces. | 
**dhcp** | **Boolean** | Address assigned by a DHCP server. | 
**interface_name** | **String** | Network interface, for example, \&quot;nic0\&quot; queried. | 
**updateable** | **Boolean** | This indicates if the network configuration can be updated for the interface. | 


