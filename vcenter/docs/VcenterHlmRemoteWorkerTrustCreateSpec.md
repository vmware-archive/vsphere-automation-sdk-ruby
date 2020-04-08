# VSphereAutomation::VCenter::VcenterHlmRemoteWorkerTrustCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | Domain identifier Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**group_map** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | Maps a group in an existing token to a list of local SSO groups in the local domain. Map key is expected to be in UPN/email address format. Example is group name and domain name separated by &#39;@&#39;: &amp;lt;group-name&amp;gt;@&amp;lt;domain-name&amp;gt; Map value is the name of an existing group. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**label** | **String** | Label of the trust. A non-unique, user-readable label. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**signing_cert_chains** | [**Array&lt;VcenterHlmRemoteWorkerX509CertChain&gt;**](VcenterHlmRemoteWorkerX509CertChain.md) | List of signing certificate chains. At least one cert chain is required. Private key is not included. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**type** | **String** | Type of trust. Hint for the UI to use to be able to distinguish this VC from others. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**upn_suffixes** | **Array&lt;String&gt;** | List of the UPN suffixes used in this trust relationship. Must contain at least one entry for the trusted domain. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


