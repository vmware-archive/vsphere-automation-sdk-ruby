# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsAttestationInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**VcenterTrustedInfrastructureNetworkAddress**](VcenterTrustedInfrastructureNetworkAddress.md) |  | 
**cluster** | **String** | The opaque string identifier of the cluster in which the Attestation Service is part of. | 
**group** | **String** | The group ID determines which Attestation Service instances this Attestation Service can communicate with. | 
**host** | **String** | The trusted ESX on which the service runs. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem. | 
**trusted_ca** | [**VcenterTrustedInfrastructureX509CertChain**](VcenterTrustedInfrastructureX509CertChain.md) |  | 


