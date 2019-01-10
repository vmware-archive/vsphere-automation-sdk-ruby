# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeploySpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the deployed virtual machine. | 
**description** | **String** | Description of the deployed virtual machine. | [optional] 
**vm_home_storage** | [**VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage**](VcenterVmTemplateLibraryItemsDeploySpecVmHomeStorage.md) |  | [optional] 
**disk_storage** | [**VcenterVmTemplateLibraryItemsDeploySpecDiskStorage**](VcenterVmTemplateLibraryItemsDeploySpecDiskStorage.md) |  | [optional] 
**disk_storage_overrides** | **Array&lt;Object&gt;** | Storage specification for individual disks in the deployed virtual machine. This is specified as a mapping between disk identifiers in the source virtual machine template contained in the library item and their storage specifications. | [optional] 
**placement** | [**VcenterVmTemplateLibraryItemsDeployPlacementSpec**](VcenterVmTemplateLibraryItemsDeployPlacementSpec.md) |  | [optional] 
**powered_on** | **BOOLEAN** | Specifies whether the deployed virtual machine should be powered on after deployment. | [optional] 
**guest_customization** | [**VcenterVmTemplateLibraryItemsGuestCustomizationSpec**](VcenterVmTemplateLibraryItemsGuestCustomizationSpec.md) |  | [optional] 
**hardware_customization** | [**VcenterVmTemplateLibraryItemsHardwareCustomizationSpec**](VcenterVmTemplateLibraryItemsHardwareCustomizationSpec.md) |  | [optional] 


