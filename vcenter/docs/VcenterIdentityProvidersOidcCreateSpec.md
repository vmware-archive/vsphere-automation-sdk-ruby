# VSphereAutomation::VCenter::VcenterIdentityProvidersOidcCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**claim_map** | [**Array&lt;VcenterIdentityProvidersOauth2CreateSpecClaimMap&gt;**](VcenterIdentityProvidersOauth2CreateSpecClaimMap.md) | The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server understands. Currently only the key \&quot;perms\&quot; is supported. The key \&quot;perms\&quot; is used for mapping the \&quot;perms\&quot; claim of incoming JWT. The value is another map with an external group as the key and a vCenter Server group as value. | 
**client_id** | **String** | Client identifier to connect to the provider | 
**client_secret** | **String** | The secret shared between the client and the provider | 
**discovery_endpoint** | **String** | Endpoint to retrieve the provider metadata | 


