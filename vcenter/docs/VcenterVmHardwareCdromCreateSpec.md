# VSphereAutomation::VCenter::VcenterVmHardwareCdromCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_guest_control** | **Boolean** | Flag indicating whether the guest can connect and disconnect the device. Defaults to false if unset. | [optional] 
**backing** | [**VcenterVmHardwareCdromBackingSpec**](VcenterVmHardwareCdromBackingSpec.md) |  | [optional] 
**ide** | [**VcenterVmHardwareIdeAddressSpec**](VcenterVmHardwareIdeAddressSpec.md) |  | [optional] 
**sata** | [**VcenterVmHardwareSataAddressSpec**](VcenterVmHardwareSataAddressSpec.md) |  | [optional] 
**start_connected** | **Boolean** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. Defaults to false if unset. | [optional] 
**type** | [**VcenterVmHardwareCdromHostBusAdapterType**](VcenterVmHardwareCdromHostBusAdapterType.md) |  | [optional] 


