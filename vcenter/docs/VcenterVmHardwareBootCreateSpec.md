# VSphereAutomation::VCenter::VcenterVmHardwareBootCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delay** | **Integer** | Delay in milliseconds before beginning the firmware boot process when the virtual machine is powered on. This delay may be used to provide a time window for users to connect to the virtual machine console and enter BIOS setup mode. If unset, default value is 0. | [optional] 
**efi_legacy_boot** | **Boolean** | Flag indicating whether to use EFI legacy boot mode. If unset, defaults to value that is recommended for the guest OS and is supported for the virtual hardware version. | [optional] 
**enter_setup_mode** | **Boolean** | Flag indicating whether the firmware boot process should automatically enter setup mode the next time the virtual machine boots. Note that this flag will automatically be reset to false once the virtual machine enters setup mode. If unset, the value is unchanged. | [optional] 
**network_protocol** | [**VcenterVmHardwareBootNetworkProtocol**](VcenterVmHardwareBootNetworkProtocol.md) |  | [optional] 
**_retry** | **Boolean** | Flag indicating whether the virtual machine should automatically retry the boot process after a failure. If unset, default value is false. | [optional] 
**retry_delay** | **Integer** | Delay in milliseconds before retrying the boot process after a failure; applicable only when Boot.Info.retry is true. If unset, default value is 10000. | [optional] 
**type** | [**VcenterVmHardwareBootType**](VcenterVmHardwareBootType.md) |  | [optional] 


