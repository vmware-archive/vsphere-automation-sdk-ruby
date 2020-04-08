# VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**Array&lt;VcenterTrustedInfrastructureNetworkAddress&gt;**](VcenterTrustedInfrastructureNetworkAddress.md) | A set of address by which to filter. If unset, the services will not be filtered by address. | [optional] 
**group** | **Array&lt;String&gt;** | The group specifies the Key Provider Service instances that can accept reports issued by this Attestation Service instance. If unset, the services will not be filtered by group. | [optional] 
**services** | **Array&lt;String&gt;** | A set of IDs by which to filter the services. If unset, the services will not be filtered by ID. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.trusted_infrastructure.attestation.Service. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.trusted_infrastructure.attestation.Service. | [optional] 
**trust_authority_cluster** | **Array&lt;String&gt;** | The cluster specifies the Trust Authority Cluster this Attestation Service belongs to. If unset, the services will not be filtered by trustAuthorityCluster. | [optional] 


