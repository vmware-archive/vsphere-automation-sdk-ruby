# VSphereAutomation::VCenter::VcenterIdentityProvidersInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_directory_over_ldap** | [**VcenterIdentityProvidersActiveDirectoryOverLdap**](VcenterIdentityProvidersActiveDirectoryOverLdap.md) |  | [optional] 
**auth_query_params** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | &lt;p&gt;key/value pairs that are to be appended to the authEndpoint request.&lt;/p&gt; &lt;p&gt;How to append to authEndpoint request:&lt;/p&gt; If the map is not empty, a \&quot;?\&quot; is added to the endpoint URL, and combination of each k and each string in the v is added with an \&quot;&amp;\&quot; delimiter. Details:&lt;ul&gt; &lt;li&gt;If the value contains only one string, then the key is added with \&quot;k&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value is an empty list, then the key is added without a \&quot;&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value contains multiple strings, then the key is repeated in the query-string for each string in the value.&lt;/li&gt;&lt;/ul&gt; | [optional] 
**config_tag** | [**VcenterIdentityProvidersConfigType**](VcenterIdentityProvidersConfigType.md) |  | 
**domain_names** | **Array&lt;String&gt;** | Set of fully qualified domain names to trust when federating with this identity provider. Tokens from this identity provider will only be validated if the user belongs to one of these domains, and any domain-qualified groups in the tokens will be filtered to include only those groups that belong to one of these domains. If domainNames is an empty set, domain validation behavior at login with this identity provider will be as follows: the user&#39;s domain will be parsed from the User Principal Name (UPN) value that is found in the tokens returned by the identity provider. This domain will then be implicitly trusted and used to filter any groups that are also provided in the tokens. | [optional] 
**groups_claim** | **String** | Specifies which claim provides the group membership for the token subject. If empty, the default behavior for CSP is used. In this case, the groups for the subject will be comprised of the groups in &#39;group_names&#39; and &#39;group_ids&#39; claims. | [optional] 
**idm_endpoints** | **Array&lt;String&gt;** | Identity management endpoints. | [optional] 
**idm_protocol** | [**VcenterIdentityProvidersIdmProtocol**](VcenterIdentityProvidersIdmProtocol.md) |  | [optional] 
**is_default** | **Boolean** | Specifies whether the provider is the default provider. | 
**name** | **String** | The user friendly name for the provider | [optional] 
**oauth2** | [**VcenterIdentityProvidersOauth2Info**](VcenterIdentityProvidersOauth2Info.md) |  | [optional] 
**oidc** | [**VcenterIdentityProvidersOidcInfo**](VcenterIdentityProvidersOidcInfo.md) |  | [optional] 
**org_ids** | **Array&lt;String&gt;** | The set of orgIds as part of SDDC creation which provides the basis for tenancy | 
**upn_claim** | **String** | Specifies which claim provides the user principal name (UPN) for the user. | [optional] 


