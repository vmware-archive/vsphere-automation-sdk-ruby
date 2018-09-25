# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsHardwareCustomizationSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nics** | **Array&lt;Object&gt;** | Map of Ethernet network adapters to update. | [optional] 
**disks_to_remove** | **Array&lt;String&gt;** | Idenfiers of disks to remove from the deployed virtual machine. | [optional] 
**disks_to_update** | **Array&lt;Object&gt;** | Disk update specification for individual disks in the deployed virtual machine. | [optional] 
**cpu_update** | [**VcenterVmTemplateLibraryItemsCpuUpdateSpec**](VcenterVmTemplateLibraryItemsCpuUpdateSpec.md) |  | [optional] 
**memory_update** | [**VcenterVmTemplateLibraryItemsMemoryUpdateSpec**](VcenterVmTemplateLibraryItemsMemoryUpdateSpec.md) |  | [optional] 


