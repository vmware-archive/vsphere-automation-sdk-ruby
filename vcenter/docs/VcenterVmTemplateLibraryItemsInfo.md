# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | [**VcenterVmTemplateLibraryItemsCpuInfo**](VcenterVmTemplateLibraryItemsCpuInfo.md) |  | 
**disks** | [**Array&lt;VcenterVmTemplateLibraryItemsInfoDisks&gt;**](VcenterVmTemplateLibraryItemsInfoDisks.md) | Storage information about the virtual machine template&#39;s virtual disks. | 
**guest_os** | [**VcenterVmGuestOS**](VcenterVmGuestOS.md) |  | 
**memory** | [**VcenterVmTemplateLibraryItemsMemoryInfo**](VcenterVmTemplateLibraryItemsMemoryInfo.md) |  | 
**nics** | [**Array&lt;VcenterVmTemplateLibraryItemsInfoNics&gt;**](VcenterVmTemplateLibraryItemsInfoNics.md) | Information about the virtual machine template&#39;s virtual ethernet adapters. | 
**vm_home_storage** | [**VcenterVmTemplateLibraryItemsVmHomeStorageInfo**](VcenterVmTemplateLibraryItemsVmHomeStorageInfo.md) |  | 
**vm_template** | **String** | Identifier of the latest virtual machine template contained in the library item. This {@term field} is the managed object identifier used to identify the virtual machine template in the vSphere Management (SOAP) API. | 


