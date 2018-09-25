# VSphereAutomation::VCenter::VcenterVmHardwareEthernetUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**upt_compatibility_enabled** | **BOOLEAN** | Flag indicating whether Universal Pass-Through (UPT) compatibility should be enabled on this virtual Ethernet adapter.   This field may be modified at any time, and changes will be applied the next time the virtual machine is powered on.  If unset, the value is unchanged. Must be unset if the emulation type of the virtual Ethernet adapter is not VMXNET3. | [optional] 
**mac_type** | [**VcenterVmHardwareEthernetMacAddressType**](VcenterVmHardwareEthernetMacAddressType.md) |  | [optional] 
**mac_address** | **String** | MAC address.   This field may be modified at any time, and changes will be applied the next time the virtual machine is powered on.  If unset, the value is unchanged. Must be specified if Ethernet.UpdateSpec.mac-type is MANUAL. Must be unset if the MAC address type is not MANUAL. | [optional] 
**wake_on_lan_enabled** | **BOOLEAN** | Flag indicating whether wake-on-LAN shoud be enabled on this virtual Ethernet adapter.   This field may be modified at any time, and changes will be applied the next time the virtual machine is powered on.  If unset, the value is unchanged. | [optional] 
**backing** | [**VcenterVmHardwareEthernetBackingSpec**](VcenterVmHardwareEthernetBackingSpec.md) |  | [optional] 
**start_connected** | **BOOLEAN** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. If unset, the value is unchanged. | [optional] 
**allow_guest_control** | **BOOLEAN** | Flag indicating whether the guest can connect and disconnect the device. If unset, the value is unchanged. | [optional] 


