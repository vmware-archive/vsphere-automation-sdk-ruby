# VSphereAutomation::VCenter::VcenterVmHardwareSerialInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_guest_control** | **Boolean** | Flag indicating whether the guest can connect and disconnect the device. | 
**backing** | [**VcenterVmHardwareSerialBackingInfo**](VcenterVmHardwareSerialBackingInfo.md) |  | 
**label** | **String** | Device label. | 
**start_connected** | **Boolean** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. | 
**state** | [**VcenterVmHardwareConnectionState**](VcenterVmHardwareConnectionState.md) |  | 
**yield_on_poll** | **Boolean** | CPU yield behavior. If set to true, the virtual machine will periodically relinquish the processor if its sole task is polling the virtual serial port. The amount of time it takes to regain the processor will depend on the degree of other virtual machine activity on the host. | 


