# VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | Device label. | 
**pci_slot_number** | **Integer** | Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added. May be unset if the virtual machine has never been powered on since the adapter was created. | [optional] 
**scsi** | [**VcenterVmHardwareScsiAddressInfo**](VcenterVmHardwareScsiAddressInfo.md) |  | 
**sharing** | [**VcenterVmHardwareAdapterScsiSharing**](VcenterVmHardwareAdapterScsiSharing.md) |  | 
**type** | [**VcenterVmHardwareAdapterScsiType**](VcenterVmHardwareAdapterScsiType.md) |  | 


