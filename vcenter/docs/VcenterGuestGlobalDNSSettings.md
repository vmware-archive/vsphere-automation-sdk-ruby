# VSphereAutomation::VCenter::VcenterGuestGlobalDNSSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dns_servers** | **Array&lt;String&gt;** | List of DNS servers, for a virtual network adapter with a static IP address. If this list is empty, then the guest operating system is expected to use a DHCP server to get its DNS server settings. These settings configure the virtual machine to use the specified DNS servers. These DNS server settings are listed in the order of preference. If unset, no DNS servers are set. | [optional] 
**dns_suffix_list** | **Array&lt;String&gt;** | List of name resolution suffixes for the virtual network adapter. This list applies to both Windows and Linux guest customization. For Linux, this setting is global, whereas in Windows, this setting is listed on a per-adapter basis. If unset, no DNS suffixes are set. | [optional] 


