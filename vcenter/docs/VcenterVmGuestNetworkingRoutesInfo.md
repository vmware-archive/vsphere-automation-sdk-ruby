# VSphereAutomation::VCenter::VcenterVmGuestNetworkingRoutesInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gateway_address** | **String** | Where to send the packets for this route. Unicast IP Address of the next hop router. IPv4 address is specified using dotted decimal notation. For example, \&quot;192.0.2.1\&quot;. IPv6 addresses are 128-bit specified using as eight fields of up to four hexadecimal digits. A colon separates each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of symbol &#39;::&#39; to represent multiple 16-bit groups of contiguous 0&#39;s only once in an address as described in RFC 2373. If unset no gateway is set for the route. | [optional] 
**interface_index** | **Integer** | The network interface associated with this route. This is an index into the result of Interfaces.list The index refers to the relative position of an element in a list. For example, an index of 0 refers to the first element in the list while an index of 1 refers to the second element. If unset the route is not associated with a network interface. | [optional] 
**network** | **String** | IP Address of the destination IP network. IPv4 address is specified using dotted decimal notation. For example, \&quot;192.0.2.1\&quot;. IPv6 addresses are 128-bit specified using as eight fields of up to four hexadecimal digits. A colon separates each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of symbol &#39;::&#39; to represent multiple 16-bit groups of contiguous 0&#39;s only once in an address as described in RFC 2373. | 
**prefix_length** | **Integer** | The prefix length. For IPv4 the value range is 0-32. For IPv6 prefixLength is a decimal value range 0-128. The property represents the number of contiguous, higher-order bits of the address that make up the network portion of the IP address. | 


