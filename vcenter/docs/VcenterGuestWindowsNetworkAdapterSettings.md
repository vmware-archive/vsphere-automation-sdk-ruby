# VSphereAutomation::VCenter::VcenterGuestWindowsNetworkAdapterSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dns_domain** | **String** | A DNS domain suffix such as vmware.com. If unset, no DNS domain is set. | [optional] 
**dns_servers** | **Array&lt;String&gt;** | A list of server IP addresses to use for DNS lookup in a Windows guest operating system.   These servers should be specified in the order of preference. If this list is not empty, and if a DHCP IP address is used, then these settings override the DHCP settings.  If unset, no DNS servers are set. | [optional] 
**net_bios_mode** | [**VcenterGuestWindowsNetworkAdapterSettingsNetBIOSMode**](VcenterGuestWindowsNetworkAdapterSettingsNetBIOSMode.md) |  | [optional] 
**wins_servers** | **Array&lt;String&gt;** | List of WINS Servers to set for the Windows guest operating system. A Maximum of two IP addresses can be specified in this list. The first IP address will be set as the primary WINS server. The second IP address will be set as the secondary WINS server. If unset, no WINS Servers are set. | [optional] 


