# VSphereAutomation::VCenter::VcenterVmHardwareDiskInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backing** | [**VcenterVmHardwareDiskBackingInfo**](VcenterVmHardwareDiskBackingInfo.md) |  | 
**capacity** | **Integer** | Capacity of the virtual disk in bytes. If unset, virtual disk is inaccessible or disk capacity is 0. | [optional] 
**ide** | [**VcenterVmHardwareIdeAddressInfo**](VcenterVmHardwareIdeAddressInfo.md) |  | [optional] 
**label** | **String** | Device label. | 
**nvme** | [**VcenterVmHardwareNvmeAddressInfo**](VcenterVmHardwareNvmeAddressInfo.md) |  | [optional] 
**sata** | [**VcenterVmHardwareSataAddressInfo**](VcenterVmHardwareSataAddressInfo.md) |  | [optional] 
**scsi** | [**VcenterVmHardwareScsiAddressInfo**](VcenterVmHardwareScsiAddressInfo.md) |  | [optional] 
**type** | [**VcenterVmHardwareDiskHostBusAdapterType**](VcenterVmHardwareDiskHostBusAdapterType.md) |  | 


