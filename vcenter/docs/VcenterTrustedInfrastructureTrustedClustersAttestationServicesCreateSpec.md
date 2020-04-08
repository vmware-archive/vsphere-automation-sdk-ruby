# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service** | **String** | The service&#39;s unique ID. This field is optional and it is only relevant when the value of Services.CreateSpec.type is SERVICE. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service. | [optional] 
**trust_authority_cluster** | **String** | The attestation cluster&#39;s unique ID. This field is optional and it is only relevant when the value of Services.CreateSpec.type is CLUSTER. | [optional] 
**type** | [**VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpecSourceType**](VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpecSourceType.md) |  | 


