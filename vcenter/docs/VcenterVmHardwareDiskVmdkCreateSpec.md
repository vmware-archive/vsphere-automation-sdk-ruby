# VSphereAutomation::VCenter::VcenterVmHardwareDiskVmdkCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Base name of the VMDK file. The name should not include the &#39;.vmdk&#39; file extension. If unset, a name (derived from the name of the virtual machine) will be chosen by the server. | [optional] 
**capacity** | **Integer** | Capacity of the virtual disk backing in bytes. If unset, defaults to a guest-specific capacity. | [optional] 
**storage_policy** | [**VcenterVmHardwareDiskStoragePolicySpec**](VcenterVmHardwareDiskStoragePolicySpec.md) |  | [optional] 


