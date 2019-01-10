# VSphereAutomation::VCenter::VcenterVmStoragePolicyComplianceVmComplianceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**VcenterVmStoragePolicyComplianceStatus**](VcenterVmStoragePolicyComplianceStatus.md) |  | 
**check_time** | **DateTime** | Date and time of the most recent compliance check. | 
**policy** | **String** | Identifier of the storage policy associated with the virtual machine. If unset SPBM is unable to retrieve or determine the associated policy, Compliance.VmComplianceInfo.failure-cause is set in such casses. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.StoragePolicy. | [optional] 
**failure_cause** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | The exception that caused the compliance check to fail. There can be more than one cause, since a policy can contain capabilities from multiple providers. If empty, it implies no failures while retrieving compliance. | 


