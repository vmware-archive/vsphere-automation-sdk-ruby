# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guest_os** | [**VcenterVmGuestOS**](VcenterVmGuestOS.md) |  | [optional] 
**cpu** | [**VcenterVmTemplateLibraryItemsCpuInfo**](VcenterVmTemplateLibraryItemsCpuInfo.md) |  | [optional] 
**memory** | [**VcenterVmTemplateLibraryItemsMemoryInfo**](VcenterVmTemplateLibraryItemsMemoryInfo.md) |  | [optional] 
**vm_home_storage** | [**VcenterVmTemplateLibraryItemsVmHomeStorageInfo**](VcenterVmTemplateLibraryItemsVmHomeStorageInfo.md) |  | [optional] 
**disks** | **Array&lt;Object&gt;** | Storage information about the virtual machine template&#39;s virtual disks. | [optional] 
**nics** | **Array&lt;Object&gt;** | Information about the virtual machine template&#39;s virtual ethernet adapters. | [optional] 
**vm_template** | **String** | Identifier of the virtual machine template contained in the library item. This field is used to identify the virtual machine template in legacy APIs. | [optional] 


