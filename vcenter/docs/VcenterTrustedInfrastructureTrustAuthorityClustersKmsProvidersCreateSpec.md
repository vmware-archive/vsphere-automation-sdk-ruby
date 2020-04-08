# VSphereAutomation::VCenter::VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key_server** | [**VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpec**](VcenterTrustedInfrastructureTrustAuthorityClustersKmsProvidersKeyServerCreateSpec.md) |  | 
**master_key_id** | **String** | Master key ID created for the provider.   A unique Key ID.  | 
**provider** | **String** | Name of the provider.   A unique string chosen by the client.  When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider. | 


