# VSphereAutomation::VCenter::VcenterIdentityProvidersUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_directory_over_ldap** | [**VcenterIdentityProvidersActiveDirectoryOverLdap**](VcenterIdentityProvidersActiveDirectoryOverLdap.md) |  | [optional] 
**auth_query_params** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | key/value pairs that are to be appended to the authEndpoint request. How to append to authEndpoint request: If the map is not empty, a \&quot;?\&quot; is added to the endpoint URL, and combination of each k and each string in the v is added with an \&quot;&amp;\&quot; delimiter. Details: If the value contains only one string, then the key is added with \&quot;k&#x3D;v\&quot;. If the value is an empty list, then the key is added without a \&quot;&#x3D;v\&quot;. If the value contains multiple strings, then the key is repeated in the query-string for each string in the value. If the map is empty, deletes all params. | [optional] 
**config_tag** | [**VcenterIdentityProvidersConfigType**](VcenterIdentityProvidersConfigType.md) |  | 
**domain_names** | **Array&lt;String&gt;** | Set of fully qualified domain names to trust when federating with this identity provider. Tokens from this identity provider will only be validated if the user belongs to one of these domains, and any domain-qualified groups in the tokens will be filtered to include only those groups that belong to one of these domains. | [optional] 
**groups_claim** | **String** | Specifies which claim provides the group membership for the token subject. | [optional] 
**idm_endpoints** | **Array&lt;String&gt;** | Identity management endpoints. When specified, at least one endpoint must be provided. | [optional] 
**idm_protocol** | [**VcenterIdentityProvidersIdmProtocol**](VcenterIdentityProvidersIdmProtocol.md) |  | [optional] 
**make_default** | **Boolean** | Specifies whether to make this the default provider. If {@name UpdateSpec#makeDefault} is set to true, this provider will be flagged as the default provider and any other providers that had previously been flagged as the default will be made non-default. If {@name UpdateSpec#makeDefault} is set to false, this provider&#39;s default flag will not be modified. | [optional] 
**name** | **String** | The user friendly name for the provider. This name can be used for human-readable identification purposes, but it does not have to be unique, as the system will use internal UUIDs to differentiate providers. | [optional] 
**oauth2** | [**VcenterIdentityProvidersOauth2UpdateSpec**](VcenterIdentityProvidersOauth2UpdateSpec.md) |  | [optional] 
**oidc** | [**VcenterIdentityProvidersOidcUpdateSpec**](VcenterIdentityProvidersOidcUpdateSpec.md) |  | [optional] 
**org_ids** | **Array&lt;String&gt;** | The set orgIds as part of SDDC creation which provides the basis for tenancy | [optional] 
**reset_groups_claim** | **Boolean** | Flag indicating whether any existing groups claim value should be removed. If this field is set to {@code true}, the existing groups claim value is removed which defaults to backwards compatibility with CSP. In this case, the groups for the subject will be comprised of the groups in &#39;group_names&#39; and &#39;group_ids&#39; claims. If this field is set to {@code false}, the existing groups claim will be changed to the value specified in {@link #groupsClaim}, if any. | [optional] 
**reset_upn_claim** | **Boolean** | Flag indicating whether the user principal name (UPN) claim should be set back to its default value. If this field is set to {@code true}, the user principal name (UPN) claim will be set to &#39;acct&#39;, which is used for backwards compatibility with CSP. If this field is set to {@code false}, the existing user principal name (UPN) claim will be changed to the value specified in {@link #upnClaim}, if any. | [optional] 
**upn_claim** | **String** | Specifies which claim provides the user principal name (UPN) for the subject of the token. | [optional] 


