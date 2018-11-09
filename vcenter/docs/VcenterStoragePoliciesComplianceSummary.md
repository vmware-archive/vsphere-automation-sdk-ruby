# VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vm** | **String** | Identifier of virtual machine When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine. | 
**vm_home** | [**VcenterStoragePoliciesComplianceStatus**](VcenterStoragePoliciesComplianceStatus.md) |  | [optional] 
**disks** | **Array&lt;Object&gt;** | List of the virtual hard disk. If unset or empty, virtual machine entity does not have any disks or its disks are not associated with a storage policy. When clients pass a value of this structure as a parameter, the key in the field map must be an identifier for the resource type: vcenter.vm.hardware.Disk. When operations return a value of this structure as a result, the key in the field map will be an identifier for the resource type: vcenter.vm.hardware.Disk. | [optional] 


