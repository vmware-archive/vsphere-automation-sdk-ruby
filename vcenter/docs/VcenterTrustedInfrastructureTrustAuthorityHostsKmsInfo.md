# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**VcenterTrustedInfrastructureNetworkAddress**](VcenterTrustedInfrastructureNetworkAddress.md) |  | 
**cluster** | **String** | The opaque string identifier of the cluster in which the Key Provider Service is part of. | 
**group** | **String** | The group ID determines which Attestation Service instances this Key Provider Service can communicate with. | 
**host** | **String** | The trusted ESX on which the service runs. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem. | 
**trusted_ca** | [**VcenterTrustedInfrastructureX509CertChain**](VcenterTrustedInfrastructureX509CertChain.md) |  | 


