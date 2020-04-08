# VSphereAutomation::VCenter::VcenterNamespaceManagementEdgeClusterCompatibilitySummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compatible** | **Boolean** | Compatibility of this Edge Cluster with Namespaces feature. | 
**display_name** | **String** | Display name of the Edge Cluster. | 
**edge_cluster** | **String** | Identifier of the Edge Cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXEdgeCluster. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXEdgeCluster. | 
**incompatibility_reasons** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | List of reasons for incompatibility. If unset, this Edge Cluster is compatible. | [optional] 


