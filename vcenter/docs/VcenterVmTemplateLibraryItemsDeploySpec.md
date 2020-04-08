# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the deployed virtual machine. | [optional] 
**disk_storage** | [**VcenterVmTemplateLibraryItemsDeploySpecDiskStorage**](VcenterVmTemplateLibraryItemsDeploySpecDiskStorage.md) |  | [optional] 
**disk_storage_overrides** | [**Array&lt;VcenterVmTemplateLibraryItemsDeploySpecDiskStorageOverrides&gt;**](VcenterVmTemplateLibraryItemsDeploySpecDiskStorageOverrides.md) | Storage specification for individual disks in the deployed virtual machine. This is specified as a mapping between disk identifiers in the source virtual machine template contained in the library item and their storage specifications. | [optional] 
**guest_customization** | [**VcenterVmTemplateLibraryItemsGuestCustomizationSpec**](VcenterVmTemplateLibraryItemsGuestCustomizationSpec.md) |  | [optional] 
**hardware_customization** | [**VcenterVmTemplateLibraryItemsHardwareCustomizationSpec**](VcenterVmTemplateLibraryItemsHardwareCustomizationSpec.md) |  | [optional] 
**name** | **String** | Name of the deployed virtual machine. | 
**placement** | [**VcenterVmTemplateLibraryItemsDeployPlacementSpec**](VcenterVmTemplateLibraryItemsDeployPlacementSpec.md) |  | [optional] 
**powered_on** | **Boolean** | Specifies whether the deployed virtual machine should be powered on after deployment. | [optional] 
**vm_home_storage** | [**VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage**](VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage.md) |  | [optional] 


