# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsHardwareCustomizationSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu_update** | [**VcenterVmTemplateLibraryItemsCpuUpdateSpec**](VcenterVmTemplateLibraryItemsCpuUpdateSpec.md) |  | [optional] 
**disks_to_remove** | **Array&lt;String&gt;** | Idenfiers of disks to remove from the deployed virtual machine. | [optional] 
**disks_to_update** | [**Array&lt;VcenterVmTemplateLibraryItemsHardwareCustomizationSpecDisksToUpdate&gt;**](VcenterVmTemplateLibraryItemsHardwareCustomizationSpecDisksToUpdate.md) | Disk update specification for individual disks in the deployed virtual machine. | [optional] 
**memory_update** | [**VcenterVmTemplateLibraryItemsMemoryUpdateSpec**](VcenterVmTemplateLibraryItemsMemoryUpdateSpec.md) |  | [optional] 
**nics** | [**Array&lt;VcenterVmTemplateLibraryItemsHardwareCustomizationSpecNics&gt;**](VcenterVmTemplateLibraryItemsHardwareCustomizationSpecNics.md) | Map of Ethernet network adapters to update. | [optional] 


