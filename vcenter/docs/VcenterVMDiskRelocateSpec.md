# VSphereAutomation::VCenter::VcenterVMDiskRelocateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | Destination datastore to relocate disk. This field is currently required. In the future, if this field is unset, disk will use the datastore specified in VM.RelocatePlacementSpec.datastore field of VM.RelocateSpec.placement. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. | [optional] 
**storage_policy** | [**VcenterVmHardwareDiskStoragePolicySpec**](VcenterVmHardwareDiskStoragePolicySpec.md) |  | [optional] 


