# VSphereAutomation::VCenter::VcenterGuestAdapterMapping

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adapter** | [**VcenterGuestIPSettings**](VcenterGuestIPSettings.md) |  | 
**mac_address** | **String** | The MAC address of a network adapter being customized. If unset, the customization process maps the the settings from the list of AdapterMappings.IPSettings in the CustomizationSpec.interfaces to the virtual machine&#39;s network adapters, in PCI slot order. The first virtual network adapter on the PCI bus is assigned interfaces[0].IPSettings, the second adapter is assigned interfaces[1].IPSettings, and so on. | [optional] 


