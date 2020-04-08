# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**VcenterTrustedInfrastructureNetworkAddress**](VcenterTrustedInfrastructureNetworkAddress.md) |  | [optional] 
**cluster** | **String** | The opaque string identifier of the cluster in which the Key Provider Service is part of. This field is optional and it is only relevant when the value of Kms.Summary.summary-type is one of NORMAL or FULL. | [optional] 
**group** | **String** | The group ID determines which Attestation Service instances this Key Provider Service can communicate with. This field is optional and it is only relevant when the value of Kms.Summary.summary-type is one of NORMAL or FULL. | [optional] 
**host** | **String** | The trusted ESX on which the service runs. This field is optional and it is only relevant when the value of Kms.Summary.summary-type is one of BRIEF, NORMAL, or FULL. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem. | [optional] 
**summary_type** | [**VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummaryType**](VcenterTrustedInfrastructureTrustAuthorityHostsKmsSummaryType.md) |  | 
**trusted_ca** | [**VcenterTrustedInfrastructureX509CertChain**](VcenterTrustedInfrastructureX509CertChain.md) |  | [optional] 


