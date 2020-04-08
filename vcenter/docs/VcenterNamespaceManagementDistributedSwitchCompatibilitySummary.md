# VSphereAutomation::VCenter::VcenterNamespaceManagementDistributedSwitchCompatibilitySummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compatible** | **Boolean** | Compatibility of this switch with vSphere Namespaces. | 
**distributed_switch** | **String** | Identifier of the switch. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vSphereDistributedSwitch. | 
**incompatibility_reasons** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of reasons for incompatibility. If unset, this Distributed Switch is compatible. | [optional] 


