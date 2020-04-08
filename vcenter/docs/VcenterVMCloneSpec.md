# VSphereAutomation::VCenter::VcenterVMCloneSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disk_storage_policy** | [**VcenterVMStoragePolicySpec**](VcenterVMStoragePolicySpec.md) |  | [optional] 
**disks_to_remove** | **Array&lt;String&gt;** | Set of Disks to Remove. If unset, all disks will be copied. If the same identifier is in VM.CloneSpec.disks-to-update InvalidArgument fault will be returned. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.vm.hardware.Disk. | [optional] 
**disks_to_update** | [**Array&lt;VcenterVMCloneSpecDisksToUpdate&gt;**](VcenterVMCloneSpecDisksToUpdate.md) | Map of Disks to Update. If unset, all disks will copied to the datastore specified in the VM.ClonePlacementSpec.datastore field of VM.CloneSpec.placement. If the same identifier is in VM.CloneSpec.disks-to-remove InvalidArgument fault will be thrown. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | [optional] 
**fallback_to_datastore_default_policy** | **Boolean** | Flag used by the server to auto assign storage policy when a target storage policy is not explicitly specified for the operation and the source virtual machine storage policy is not compatible with target datastore. If flag is set to true, the server will use the default storage policy of the target datastore. Otherwise, the server will throw an error for the operation. See also the storage policy assignment rules for the VM.clone operation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, the default value is false, the server will throw an error if source policy is not compatible with the target datastore. | [optional] 
**guest_customization_spec** | [**VcenterVMGuestCustomizationSpec**](VcenterVMGuestCustomizationSpec.md) |  | [optional] 
**name** | **String** | Virtual machine name. | 
**placement** | [**VcenterVMClonePlacementSpec**](VcenterVMClonePlacementSpec.md) |  | [optional] 
**power_on** | **Boolean** | Attempt to perform a VM.CloneSpec.power-on after clone. If unset, the virtual machine will not be powered on. | [optional] 
**source** | **String** | Virtual machine to clone from. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine. | 
**vm_home_storage_policy** | [**VcenterVMStoragePolicySpec**](VcenterVMStoragePolicySpec.md) |  | [optional] 


