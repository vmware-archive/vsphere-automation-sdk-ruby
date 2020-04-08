# VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesIpAddressInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_address** | **String** | IPv4 address is specified using dotted decimal notation. For example, \&quot;192.0.2.1\&quot;. IPv6 addresses are 128-bit addresses specified using eight fields of up to four hexadecimal digits. A colon separates each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of the symbol &#39;::&#39; to represent multiple 16-bit groups of contiguous 0&#39;s only once in an address as described in RFC 2373. | 
**origin** | [**VcenterVmGuestNetworkingInterfacesIpAddressOrigin**](VcenterVmGuestNetworkingInterfacesIpAddressOrigin.md) |  | [optional] 
**prefix_length** | **Integer** | Denotes the length of a generic Internet network address prefix. Prefix length: the valid range of values is 0-32 for IPv4, and 0-128 for IPv6. A value of n corresponds to an IP address mask that has n contiguous 1-bits from the most significant bit (MSB), with all other bits set to 0. A value of zero is valid only if the calling context defines it. | 
**state** | [**VcenterVmGuestNetworkingInterfacesIpAddressStatus**](VcenterVmGuestNetworkingInterfacesIpAddressStatus.md) |  | 


