# VSphereAutomation::VCenter::VcenterGuestCustomizationSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configuration_spec** | [**VcenterGuestConfigurationSpec**](VcenterGuestConfigurationSpec.md) |  | 
**global_dns_settings** | [**VcenterGuestGlobalDNSSettings**](VcenterGuestGlobalDNSSettings.md) |  | 
**interfaces** | [**Array&lt;VcenterGuestAdapterMapping&gt;**](VcenterGuestAdapterMapping.md) | IP settings that are specific to a particular virtual network adapter. The AdapterMapping structure maps a network adapter&#39;s MAC address to its IPSettings. May be empty if there are no network adapters, else should match number of network adapters configured for the VM. | 


