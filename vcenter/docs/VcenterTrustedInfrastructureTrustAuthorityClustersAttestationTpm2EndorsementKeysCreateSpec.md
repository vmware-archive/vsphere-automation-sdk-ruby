# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2EndorsementKeysCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificate** | **String** | TPM endorsement key certificate in PEM format.   When a endorsement key certificate is provided, it will be verified against the CA certificate list. Endorsement key certificates that are not signed by one of the CA certificates will be rejected.    Using this format allows for failures to be caught during configuration rather than later during attestation.  If unset EndorsementKeys.CreateSpec.public-key must be set. | [optional] 
**name** | **String** | A unique name for the TPM endorsement key.   The unique name should be something that an administrator can use to easily identify the remote system. For example, the hostname, or hardware UUID.  When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey. | 
**public_key** | **String** | TPM public endorsement key in PEM format. If unset EndorsementKeys.CreateSpec.certificate must be set. | [optional] 


