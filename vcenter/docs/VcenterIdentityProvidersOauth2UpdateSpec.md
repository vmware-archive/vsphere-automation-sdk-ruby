# VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2UpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_endpoint** | **String** | Authentication/authorization endpoint of the provider | [optional] 
**auth_query_params** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | key/value pairs that are to be appended to the authEndpoint request. How to append to authEndpoint request: If the map is not empty, a \&quot;?\&quot; is added to the endpoint URL, and combination of each k and each string in the v is added with an \&quot;&amp;\&quot; delimiter. Details: If the value contains only one string, then the key is added with \&quot;k&#x3D;v\&quot;. If the value is an empty list, then the key is added without a \&quot;&#x3D;v\&quot;. If the value contains multiple strings, then the key is repeated in the query-string for each string in the value. If the map is empty, deletes all params. | [optional] 
**authentication_method** | [**VcenterIdentityProvidersOauth2AuthenticationMethod**](VcenterIdentityProvidersOauth2AuthenticationMethod.md) |  | [optional] 
**claim_map** | [**Array&lt;VcenterIdentityProvidersOauth2CreateSpecClaimMap&gt;**](VcenterIdentityProvidersOauth2CreateSpecClaimMap.md) | The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server understands. Currently only the key \&quot;perms\&quot; is supported. The key \&quot;perms\&quot; is used for mapping the \&quot;perms\&quot; claim of incoming JWT. The value is another map with an external group as the key and a vCenter Server group as value. | [optional] 
**client_id** | **String** | Client identifier to connect to the provider | [optional] 
**client_secret** | **String** | Shared secret between identity provider and client | [optional] 
**issuer** | **String** | The identity provider namespace. It is used to validate the issuer in the acquired OAuth2 token | [optional] 
**public_key_uri** | **String** | Endpoint to retrieve the provider public key for validation | [optional] 
**token_endpoint** | **String** | Token endpoint of the provider. | [optional] 


