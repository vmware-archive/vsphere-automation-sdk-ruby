# VSphereAutomation::VCenter::VcenterVmHardwareAdapterSataCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareAdapterSataType**](VcenterVmHardwareAdapterSataType.md) |  | [optional] 
**bus** | **Integer** | SATA bus number. If unset, the server will choose an available bus number; if none is available, the request will fail. | [optional] 
**pci_slot_number** | **Integer** | Address of the SATA adapter on the PCI bus. If unset, the server will choose an available address when the virtual machine is powered on. | [optional] 


