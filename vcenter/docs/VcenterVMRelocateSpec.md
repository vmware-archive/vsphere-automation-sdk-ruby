# VSphereAutomation::VCenter::VcenterVMRelocateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disk_storage_policy** | [**VcenterVMStoragePolicySpec**](VcenterVMStoragePolicySpec.md) |  | [optional] 
**disks** | [**Array&lt;VcenterVMRelocateSpecDisks&gt;**](VcenterVMRelocateSpecDisks.md) | Individual disk relocation map. If unset, all disks will migrate to the datastore specified in the VM.RelocatePlacementSpec.datastore field of VM.RelocateSpec.placement. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | [optional] 
**fallback_to_datastore_default_policy** | **Boolean** | Flag used by the server to auto assign storage policy when a storage policy is not explicitly specified for the operation and the original virtual machine storage policy is not compatible with the target datastore. If flag is set to true, the server will use the default storage policy of the target datastore. Otherwise, the server will throw an error for the operation. See also the storage policy assignment rules for the VM.relocate operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, the default value is false, the server will throw an error if source policy is not compatible with target datastore. | [optional] 
**placement** | [**VcenterVMRelocatePlacementSpec**](VcenterVMRelocatePlacementSpec.md) |  | [optional] 
**vm_home_storage_policy** | [**VcenterVMStoragePolicySpec**](VcenterVMStoragePolicySpec.md) |  | [optional] 


