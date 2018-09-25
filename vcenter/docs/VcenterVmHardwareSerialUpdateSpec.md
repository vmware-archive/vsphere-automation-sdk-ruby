# VSphereAutomation::VCenter::VcenterVmHardwareSerialUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**yield_on_poll** | **BOOLEAN** | CPU yield behavior. If set to true, the virtual machine will periodically relinquish the processor if its sole task is polling the virtual serial port. The amount of time it takes to regain the processor will depend on the degree of other virtual machine activity on the host.   This field may be modified at any time, and changes applied to a connected virtual serial port take effect immediately.  If unset, the value is unchanged. | [optional] 
**backing** | [**VcenterVmHardwareSerialBackingSpec**](VcenterVmHardwareSerialBackingSpec.md) |  | [optional] 
**start_connected** | **BOOLEAN** | Flag indicating whether the virtual device should be connected whenever the virtual machine is powered on. If unset, the value is unchanged. | [optional] 
**allow_guest_control** | **BOOLEAN** | Flag indicating whether the guest can connect and disconnect the device. If unset, the value is unchanged. | [optional] 


