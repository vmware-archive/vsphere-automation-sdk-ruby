# VSphereAutomation::VCenter::VcenterVmHardwareEthernetCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareEthernetEmulationType**](VcenterVmHardwareEthernetEmulationType.md) |  | [optional] 
**upt_compatibility_enabled** | **BOOLEAN** | Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this virtual Ethernet adapter. If unset, defaults to false. | [optional] 
**mac_type** | [**VcenterVmHardwareEthernetMacAddressType**](VcenterVmHardwareEthernetMacAddressType.md) |  | [optional] 
**mac_address** | **String** | MAC address. Workaround for PR1459647 | [optional] 
**pci_slot_number** | **Integer** | Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid, the server will change when it the VM is started or as the device is hot added. If unset, the server will choose an available address when the virtual machine is powered on. | [optional] 
**wake_on_lan_enabled** | **BOOLEAN** | Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter. Defaults to false if unset. | [optional] 
**backing** | [**VcenterVmHardwareEthernetBackingSpec**](VcenterVmHardwareEthernetBackingSpec.md) |  | [optional] 
**start_connected** | **BOOLEAN** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. Defaults to false if unset. | [optional] 
**allow_guest_control** | **BOOLEAN** | Flag indicating whether the guest can connect and disconnect the device. Defaults to false if unset. | [optional] 


