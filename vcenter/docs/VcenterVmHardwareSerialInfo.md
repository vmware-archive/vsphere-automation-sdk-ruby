# VSphereAutomation::VCenter::VcenterVmHardwareSerialInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | Device label. | [optional] 
**yield_on_poll** | **BOOLEAN** | CPU yield behavior. If set to true, the virtual machine will periodically relinquish the processor if its sole task is polling the virtual serial port. The amount of time it takes to regain the processor will depend on the degree of other virtual machine activity on the host. | [optional] 
**backing** | [**VcenterVmHardwareSerialBackingInfo**](VcenterVmHardwareSerialBackingInfo.md) |  | [optional] 
**state** | [**VcenterVmHardwareConnectionState**](VcenterVmHardwareConnectionState.md) |  | [optional] 
**start_connected** | **BOOLEAN** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. | [optional] 
**allow_guest_control** | **BOOLEAN** | Flag indicating whether the guest can connect and disconnect the device. | [optional] 


