# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guest_os** | [**VcenterVmGuestOS**](VcenterVmGuestOS.md) |  | 
**cpu** | [**VcenterVmTemplateLibraryItemsCpuInfo**](VcenterVmTemplateLibraryItemsCpuInfo.md) |  | 
**memory** | [**VcenterVmTemplateLibraryItemsMemoryInfo**](VcenterVmTemplateLibraryItemsMemoryInfo.md) |  | 
**vm_home_storage** | [**VcenterVmTemplateLibraryItemsVmHomeStorageInfo**](VcenterVmTemplateLibraryItemsVmHomeStorageInfo.md) |  | 
**disks** | **Array&lt;Object&gt;** | Storage information about the virtual machine template&#39;s virtual disks. | 
**nics** | **Array&lt;Object&gt;** | Information about the virtual machine template&#39;s virtual ethernet adapters. | 
**vm_template** | **String** | Identifier of the virtual machine template contained in the library item. This field is used to identify the virtual machine template in legacy APIs. | 


