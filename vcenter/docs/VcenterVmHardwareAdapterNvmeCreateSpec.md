# VSphereAutomation::VCenter::VcenterVmHardwareAdapterNvmeCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bus** | **Integer** | NVMe bus number. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, the server will choose an available bus number; if none is available, the request will fail. | [optional] 
**pci_slot_number** | **Integer** | Address of the NVMe adapter on the PCI bus. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, the server will choose an available address when the virtual machine is powered on. | [optional] 


