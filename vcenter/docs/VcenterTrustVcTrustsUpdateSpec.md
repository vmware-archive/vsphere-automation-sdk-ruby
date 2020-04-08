# VSphereAutomation::VCenter::VcenterTrustVcTrustsUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_map** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | Mapping of group in existing token to a list of local SSO groups in the local domain for new token. If empty, deletes all existing mappings. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**label** | **String** | Label of the trust. A non-unique, user-readable label. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**signing_cert_chains** | [**Array&lt;VcenterCertificateManagementX509CertChain&gt;**](VcenterCertificateManagementX509CertChain.md) | List of signing certificate chains which will replace existing chain. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**type** | **String** | Type of trust, used to distinguish between different types of domains such as cloud or on-prem. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**upn_suffixes** | **Array&lt;String&gt;** | Lists the UPN suffixes used in this trust relationship. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 


