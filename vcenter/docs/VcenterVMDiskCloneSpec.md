# VSphereAutomation::VCenter::VcenterVMDiskCloneSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | Destination datastore to clone disk. This field is currently required. In the future, if this field is unset disk will be copied to the datastore specified in the VM.ClonePlacementSpec.datastore field of VM.CloneSpec.placement. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. | [optional] 
**storage_policy** | [**VcenterVmHardwareDiskStoragePolicySpec**](VcenterVmHardwareDiskStoragePolicySpec.md) |  | [optional] 


