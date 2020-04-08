# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersConsumerPrincipalsFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Array&lt;String&gt;** | The unqiue identifier of a connection profile. If unset, no filtration will be performed by ID. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: esx.authentication.clientprofile. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: esx.authentication.clientprofile. | [optional] 
**issuer** | **Array&lt;String&gt;** | The service which created and signed the security token. If unset, no filtration will be performed by issuer. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: esx.authentication.trust.security-token-issuer. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: esx.authentication.trust.security-token-issuer. | [optional] 
**principals** | [**Array&lt;VcenterTrustedInfrastructureStsPrincipal&gt;**](VcenterTrustedInfrastructureStsPrincipal.md) | The principal used by the vCenter to retrieve tokens. If unset, no filtration will be performed by principals. | [optional] 


