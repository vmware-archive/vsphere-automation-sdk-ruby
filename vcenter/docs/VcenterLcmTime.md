# VSphereAutomation::VCenter::VcenterLcmTime

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ntp_servers** | **Array&lt;String&gt;** | To configure NTP time synchronization for the appliance, set the value to a comma - separated list of host names or IP addresses of Network Time Protocol(NTP) servers. If \&quot;ntp_servers\&quot; is not provided, the appliance clock will be synced to the ESX. For example: [\&quot;time.nist.gov\&quot;]. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Times tool sync will be enabled when ntp server is not provided. If unset, defaults to [] | [optional] 


