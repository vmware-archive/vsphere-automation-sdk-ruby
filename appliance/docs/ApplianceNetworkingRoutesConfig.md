# VSphereAutomation::Appliance::ApplianceNetworkingRoutesConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination** | **String** | Destination address that defines this route. An empty string indicates 0.0.0.0 Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**gateway** | **String** | Gateway address. An empty string indicates 0.0.0.0 Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**interface_name** | **String** | Output device interface, for example, \&quot;nic0\&quot;. An empty string indicates that the rule applies to all interfaces(*). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**prefix** | **Integer** | Destination CIDR prefix that defines this route.  See http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


