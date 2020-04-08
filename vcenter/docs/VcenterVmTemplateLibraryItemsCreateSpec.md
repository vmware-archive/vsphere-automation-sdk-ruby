# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the library item. | [optional] 
**disk_storage** | [**VcenterVmTemplateLibraryItemsCreateSpecDiskStorage**](VcenterVmTemplateLibraryItemsCreateSpecDiskStorage.md) |  | [optional] 
**disk_storage_overrides** | [**Array&lt;VcenterVmTemplateLibraryItemsCreateSpecDiskStorageOverrides&gt;**](VcenterVmTemplateLibraryItemsCreateSpecDiskStorageOverrides.md) | Storage specification for individual disks in the virtual machine template. This is specified as a mapping between disk identifiers in the source virtual machine and their respective storage specifications. | [optional] 
**library** | **String** | Identifier of the library in which the new library item should be created. | 
**name** | **String** | Name of the library item. | 
**placement** | [**VcenterVmTemplateLibraryItemsCreatePlacementSpec**](VcenterVmTemplateLibraryItemsCreatePlacementSpec.md) |  | [optional] 
**source_vm** | **String** | Identifier of the source virtual machine to create the library item from. | 
**vm_home_storage** | [**VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage**](VcenterVmTemplateLibraryItemsCreateSpecVmHomeStorage.md) |  | [optional] 


