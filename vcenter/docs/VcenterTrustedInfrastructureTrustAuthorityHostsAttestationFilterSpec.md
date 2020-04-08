# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**Array&lt;VcenterTrustedInfrastructureNetworkAddress&gt;**](VcenterTrustedInfrastructureNetworkAddress.md) | The service&#39;s address. If unset, the services will not be filtered by address. | [optional] 
**clusters** | **Array&lt;String&gt;** | A set of cluster IDs by which to filter the services. If unset, the services will not be filtered by the clusters on which they run. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource. | [optional] 
**groups** | **Array&lt;String&gt;** | The group IDs determines which Attestation Service instances this Attestation Service can communicate with. If unset, the services will not be filtered by groupId. | [optional] 
**hosts** | **Array&lt;String&gt;** | A set of host IDs by which to filter the services. If unset, the services will not be filtered by the hosts on which they run. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem. | [optional] 


