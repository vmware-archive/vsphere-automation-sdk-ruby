# VSphereAutomation::VCenter::VcenterVmHardwareDiskInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | Device label. | 
**type** | [**VcenterVmHardwareDiskHostBusAdapterType**](VcenterVmHardwareDiskHostBusAdapterType.md) |  | 
**ide** | [**VcenterVmHardwareIdeAddressInfo**](VcenterVmHardwareIdeAddressInfo.md) |  | [optional] 
**scsi** | [**VcenterVmHardwareScsiAddressInfo**](VcenterVmHardwareScsiAddressInfo.md) |  | [optional] 
**sata** | [**VcenterVmHardwareSataAddressInfo**](VcenterVmHardwareSataAddressInfo.md) |  | [optional] 
**backing** | [**VcenterVmHardwareDiskBackingInfo**](VcenterVmHardwareDiskBackingInfo.md) |  | 
**capacity** | **Integer** | Capacity of the virtual disk in bytes. If unset, virtual disk is inaccessible or disk capacity is 0. | [optional] 


