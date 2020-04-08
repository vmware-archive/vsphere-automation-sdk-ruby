# VSphereAutomation::VCenter::VcenterIdentityProvidersCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_directory_over_ldap** | [**VcenterIdentityProvidersActiveDirectoryOverLdap**](VcenterIdentityProvidersActiveDirectoryOverLdap.md) |  | [optional] 
**auth_query_params** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | &lt;p&gt;key/value pairs that are to be appended to the authEndpoint request.&lt;/p&gt; &lt;p&gt;How to append to authEndpoint request:&lt;/p&gt; If the map is not empty, a \&quot;?\&quot; is added to the endpoint URL, and combination of each k and each string in the v is added with an \&quot;&amp;\&quot; delimiter. Details:&lt;ul&gt; &lt;li&gt;If the value contains only one string, then the key is added with \&quot;k&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value is an empty list, then the key is added without a \&quot;&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value contains multiple strings, then the key is repeated in the query-string for each string in the value.&lt;/li&gt;&lt;/ul&gt; | [optional] 
**config_tag** | [**VcenterIdentityProvidersConfigType**](VcenterIdentityProvidersConfigType.md) |  | 
**domain_names** | **Array&lt;String&gt;** | Set of fully qualified domain names to trust when federating with this identity provider. Tokens from this identity provider will only be validated if the user belongs to one of these domains, and any domain-qualified groups in the tokens will be filtered to include only those groups that belong to one of these domains. | [optional] 
**groups_claim** | **String** | Specifies which claim provides the group membership for the token subject. These groups will be used for mapping to local groups per the claim map. | [optional] 
**idm_endpoints** | **Array&lt;String&gt;** | Identity management endpoints. When specified, at least one endpoint must be provided. | [optional] 
**idm_protocol** | [**VcenterIdentityProvidersIdmProtocol**](VcenterIdentityProvidersIdmProtocol.md) |  | [optional] 
**is_default** | **Boolean** | Specifies whether the provider is the default provider. Setting {@name CreateSpec#isDefault} of current provider to True makes all other providers non-default. If no other providers created in this vCenter Server before, this parameter will be disregarded, and the provider will always be set to the default. | [optional] 
**name** | **String** | The user friendly name for the provider. This name can be used for human-readable identification purposes, but it does not have to be unique, as the system will use internal UUIDs to differentiate providers. | [optional] 
**oauth2** | [**VcenterIdentityProvidersOauth2CreateSpec**](VcenterIdentityProvidersOauth2CreateSpec.md) |  | [optional] 
**oidc** | [**VcenterIdentityProvidersOidcCreateSpec**](VcenterIdentityProvidersOidcCreateSpec.md) |  | [optional] 
**org_ids** | **Array&lt;String&gt;** | The set of orgIds as part of SDDC creation which provides the basis for tenancy | [optional] 
**upn_claim** | **String** | Specifies which claim provides the user principal name (UPN) for the user. | [optional] 


