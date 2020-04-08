# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cluster** | **Array&lt;String&gt;** | Identifies the cluster. cluster If {@term.unset} return all Trust Authority Clusters. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
**state** | [**Array&lt;VcenterTrustedInfrastructureTrustAuthorityClustersState&gt;**](VcenterTrustedInfrastructureTrustAuthorityClustersState.md) | The state of the TrustAuthorityClusters. state If {@term.unset} return all Trust Authority Clusters. | [optional] 


