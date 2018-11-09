# VSphereAutomation::VCenter::VcenterStoragePoliciesComplianceVMFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**Array&lt;VcenterStoragePoliciesComplianceVMStatus&gt;**](VcenterStoragePoliciesComplianceVMStatus.md) | Compliance Status that a virtual machine must have to match the filter. Atleast one status must be specified. | 
**vms** | **Array&lt;String&gt;** | Identifiers of virtual machines that can match the filter If unset or empty, virtual machines with any identifier matches the filter When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine. | [optional] 


