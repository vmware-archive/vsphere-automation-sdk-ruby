# VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingIpv4IPv4Config

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | IPv4 address, for example, \&quot;10.20.80.191\&quot;. Set this argument to an empty string \&quot;\&quot;, if the mode is \&quot;unconfigured\&quot; or \&quot;dhcp\&quot;. | 
**default_gateway** | **String** | IPv4 address of the default gateway. This default gateway value is used if the mode argument is set to \&quot;static\&quot; This configures the global default gateway on the appliance with the specified gateway address and interface. This gateway replaces the existing default gateway configured on the appliance. However, if the gateway address is link-local, then it is added for that interface. This does not support configuration of multiple global default gateways through different interfaces. | 
**interface_name** | **String** | Interface name, for example, \&quot;nic0\&quot;, \&quot;nic1\&quot;. | 
**mode** | [**ApplianceTechpreviewNetworkingIpv4IPv4Mode**](ApplianceTechpreviewNetworkingIpv4IPv4Mode.md) |  | 
**prefix** | **Integer** | IPv4 CIDR prefix, for example , 24.  See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion. Set this argument to 0 if the mode is \&quot;unconfigured\&quot; or \&quot;dhcp\&quot;. | 


