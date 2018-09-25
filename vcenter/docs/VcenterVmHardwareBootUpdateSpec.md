# VSphereAutomation::VCenter::VcenterVmHardwareBootUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareBootType**](VcenterVmHardwareBootType.md) |  | [optional] 
**efi_legacy_boot** | **BOOLEAN** | Flag indicating whether to use EFI legacy boot mode. If unset, the value is unchanged. | [optional] 
**network_protocol** | [**VcenterVmHardwareBootNetworkProtocol**](VcenterVmHardwareBootNetworkProtocol.md) |  | [optional] 
**delay** | **Integer** | Delay in milliseconds before beginning the firmware boot process when the virtual machine is powered on. This delay may be used to provide a time window for users to connect to the virtual machine console and enter BIOS setup mode. If unset, the value is unchanged. | [optional] 
**_retry** | **BOOLEAN** | Flag indicating whether the virtual machine should automatically retry the boot process after a failure. If unset, the value is unchanged. | [optional] 
**retry_delay** | **Integer** | Delay in milliseconds before retrying the boot process after a failure; applicable only when Boot.Info.retry is true. If unset, the value is unchanged. | [optional] 
**enter_setup_mode** | **BOOLEAN** | Flag indicating whether the firmware boot process should automatically enter setup mode the next time the virtual machine boots. Note that this flag will automatically be reset to false once the virtual machine enters setup mode. If unset, the value is unchanged. | [optional] 


