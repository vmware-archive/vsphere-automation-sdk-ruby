# VSphereAutomation::VCenter::VcenterVmGuestDnsConfigInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_addresses** | **Array&lt;String&gt;** | The IP addresses of the DNS servers in order of use. IPv4 addresses are specified using dotted decimal notation. For example, \&quot;192.0.2.1\&quot;. IPv6 addresses are 128-bit addresses represented as eight fields of up to four hexadecimal digits. A colon separates each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of the symbol &#39;::&#39; to represent multiple 16-bit groups of contiguous 0&#39;s only once in an address as described in RFC 2373. | 
**search_domains** | **Array&lt;String&gt;** | The domain in which to search for hosts, placed in order of preference. These are the domain name portion of the DNS names. | 


