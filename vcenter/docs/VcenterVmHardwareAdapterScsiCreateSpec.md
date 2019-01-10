# VSphereAutomation::VCenter::VcenterVmHardwareAdapterScsiCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareAdapterScsiType**](VcenterVmHardwareAdapterScsiType.md) |  | [optional] 
**bus** | **Integer** | SCSI bus number. If unset, the server will choose an available bus number; if none is available, the request will fail. | [optional] 
**pci_slot_number** | **Integer** | Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server will change it when the VM is started or as the device is hot added. If unset, the server will choose an available address when the virtual machine is powered on. | [optional] 
**sharing** | [**VcenterVmHardwareAdapterScsiSharing**](VcenterVmHardwareAdapterScsiSharing.md) |  | [optional] 


