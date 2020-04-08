# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificates** | [**Array&lt;VcenterTrustedInfrastructureX509CertChain&gt;**](VcenterTrustedInfrastructureX509CertChain.md) | The certificates used by the vCenter STS to sign tokens. | 
**issuer** | **String** | The service which created and signed the security token. | 
**issuer_alias** | **String** | A user-friendly alias of the service which created and signed the security token. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: esx.authentication.trust.security-token-issuer. When operations return a value of this structure as a result, the field will be an identifier for the resource type: esx.authentication.trust.security-token-issuer. | 
**principal** | [**VcenterTrustedInfrastructureStsPrincipal**](VcenterTrustedInfrastructureStsPrincipal.md) |  | 


