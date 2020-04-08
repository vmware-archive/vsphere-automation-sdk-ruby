# VSphereAutomation::VCenter::VcenterLcmNetwork

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dns_servers** | **Array&lt;String&gt;** | A comma-separated list of IP addresses of DNS servers. A JSON array such as [\&quot;1.2.3.4\&quot;, \&quot;127.0.0.1\&quot;]. Required for static mode only. DNS servers must be reachable from the machine that runs CLI installer. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of TemporaryNetwork.mode is STATIC. | [optional] 
**gateway** | **String** | Gateway of the network. Required for static mode only. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of TemporaryNetwork.mode is STATIC. | [optional] 
**hostname** | **String** | Primary network identity. Can be either an IP address or a fully qualified domain name(FQDN). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. host name may not be applicable | [optional] 
**ip** | **String** | Network IP address. Required for static mode only. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of TemporaryNetwork.mode is STATIC. | [optional] 
**ip_family** | [**VcenterLcmTemporaryNetworkIpType**](VcenterLcmTemporaryNetworkIpType.md) |  | [optional] 
**mode** | [**VcenterLcmTemporaryNetworkNetworkMode**](VcenterLcmTemporaryNetworkNetworkMode.md) |  | 
**prefix** | **Integer** | Network prefix length. Required for static mode only. Remove if the mode is \&quot;dhcp\&quot;. This is the number of bits set in the subnet mask; for instance, if the subnet mask is 255.255.255.0, there are 24 bits in the binary version of the subnet mask, so the prefix length is 24. If used, the values must be in the inclusive range of 0 to 32 for IPv4 and 0 to 128 for IPv6. Required for static mode only. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of TemporaryNetwork.mode is STATIC. | [optional] 


