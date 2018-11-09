# VSphereAutomation::VCenter::VcenterVmHardwareEthernetInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | Device label. | 
**type** | [**VcenterVmHardwareEthernetEmulationType**](VcenterVmHardwareEthernetEmulationType.md) |  | 
**upt_compatibility_enabled** | **BOOLEAN** | Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.Info.type is VMXNET3. | [optional] 
**mac_type** | [**VcenterVmHardwareEthernetMacAddressType**](VcenterVmHardwareEthernetMacAddressType.md) |  | 
**mac_address** | **String** | MAC address. May be unset if Ethernet.Info.mac-type is MANUAL and has not been specified, or if Ethernet.Info.mac-type is GENERATED and the virtual machine has never been powered on since the Ethernet adapter was created. | [optional] 
**pci_slot_number** | **Integer** | Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added. May be unset if the virtual machine has never been powered on since the adapter was created. | [optional] 
**wake_on_lan_enabled** | **BOOLEAN** | Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter. | 
**backing** | [**VcenterVmHardwareEthernetBackingInfo**](VcenterVmHardwareEthernetBackingInfo.md) |  | 
**state** | [**VcenterVmHardwareConnectionState**](VcenterVmHardwareConnectionState.md) |  | 
**start_connected** | **BOOLEAN** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. | 
**allow_guest_control** | **BOOLEAN** | Flag indicating whether the guest can connect and disconnect the device. | 


