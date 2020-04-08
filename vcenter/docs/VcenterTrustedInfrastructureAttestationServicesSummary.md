# VSphereAutomation::VCenter::VcenterTrustedInfrastructureAttestationServicesSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**VcenterTrustedInfrastructureNetworkAddress**](VcenterTrustedInfrastructureNetworkAddress.md) |  | 
**group** | **String** | The group specifies the Key Provider Service instances that can accept reports issued by this Attestation Service instance. | 
**service** | **String** | The service&#39;s unique identifier. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. | 
**trust_authority_cluster** | **String** | The cluster specifies the Trust Authority Cluster this Attestation Service instance belongs to. | 


