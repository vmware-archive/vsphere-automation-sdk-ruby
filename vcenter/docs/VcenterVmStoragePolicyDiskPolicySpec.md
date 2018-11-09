# VSphereAutomation::VCenter::VcenterVmStoragePolicyDiskPolicySpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmStoragePolicyDiskPolicySpecPolicyType**](VcenterVmStoragePolicyDiskPolicySpecPolicyType.md) |  | 
**policy** | **String** | Storage Policy identification. This field is optional and it is only relevant when the value of Policy.DiskPolicySpec.type is USE_SPECIFIED_POLICY. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.StoragePolicy. | [optional] 


