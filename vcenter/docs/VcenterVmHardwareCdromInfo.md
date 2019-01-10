# VSphereAutomation::VCenter::VcenterVmHardwareCdromInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareCdromHostBusAdapterType**](VcenterVmHardwareCdromHostBusAdapterType.md) |  | 
**label** | **String** | Device label. | 
**ide** | [**VcenterVmHardwareIdeAddressInfo**](VcenterVmHardwareIdeAddressInfo.md) |  | [optional] 
**sata** | [**VcenterVmHardwareSataAddressInfo**](VcenterVmHardwareSataAddressInfo.md) |  | [optional] 
**backing** | [**VcenterVmHardwareCdromBackingInfo**](VcenterVmHardwareCdromBackingInfo.md) |  | 
**state** | [**VcenterVmHardwareConnectionState**](VcenterVmHardwareConnectionState.md) |  | 
**start_connected** | **BOOLEAN** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. | 
**allow_guest_control** | **BOOLEAN** | Flag indicating whether the guest can connect and disconnect the device. | 


