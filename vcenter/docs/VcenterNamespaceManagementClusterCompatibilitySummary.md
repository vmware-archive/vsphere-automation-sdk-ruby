# VSphereAutomation::VCenter::VcenterNamespaceManagementClusterCompatibilitySummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cluster** | **String** | Identifier of the cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. | 
**compatible** | **Boolean** | Compatibility of this cluster. | 
**incompatibility_reasons** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Reasons for incompatibility. | 


