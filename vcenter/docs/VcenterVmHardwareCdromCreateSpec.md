# VSphereAutomation::VCenter::VcenterVmHardwareCdromCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareCdromHostBusAdapterType**](VcenterVmHardwareCdromHostBusAdapterType.md) |  | [optional] 
**ide** | [**VcenterVmHardwareIdeAddressSpec**](VcenterVmHardwareIdeAddressSpec.md) |  | [optional] 
**sata** | [**VcenterVmHardwareSataAddressSpec**](VcenterVmHardwareSataAddressSpec.md) |  | [optional] 
**backing** | [**VcenterVmHardwareCdromBackingSpec**](VcenterVmHardwareCdromBackingSpec.md) |  | [optional] 
**start_connected** | **BOOLEAN** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. Defaults to false if unset. | [optional] 
**allow_guest_control** | **BOOLEAN** | Flag indicating whether the guest can connect and disconnect the device. Defaults to false if unset. | [optional] 


