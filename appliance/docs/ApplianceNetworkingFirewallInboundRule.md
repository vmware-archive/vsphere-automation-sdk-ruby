# VSphereAutomation::Appliance::ApplianceNetworkingFirewallInboundRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | IPv4 or IPv6 address. | 
**prefix** | **Integer** | CIDR prefix used to mask address. For example, an IPv4 prefix of 24 ignores the low-order 8 bits of address. | 
**policy** | [**ApplianceNetworkingFirewallInboundPolicy**](ApplianceNetworkingFirewallInboundPolicy.md) |  | 
**interface_name** | **String** | The interface to which this rule applies. An empty string indicates that the rule applies to all interfaces. | [optional] 


