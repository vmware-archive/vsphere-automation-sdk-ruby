# VSphereAutomation::VCenter::VcenterIdentityProvidersOidcSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_endpoint** | **String** | Authentication/authorization endpoint of the provider | 
**auth_query_params** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | &lt;p&gt;key/value pairs that are to be appended to the authEndpoint request.&lt;/p&gt; &lt;p&gt;How to append to authEndpoint request:&lt;/p&gt; If the map is not empty, a \&quot;?\&quot; is added to the endpoint URL, and combination of each k and each string in the v is added with an \&quot;&amp;\&quot; delimiter. Details:&lt;ul&gt; &lt;li&gt;If the value contains only one string, then the key is added with \&quot;k&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value is an empty list, then the key is added without a \&quot;&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value contains multiple strings, then the key is repeated in the query-string for each string in the value.&lt;/li&gt;&lt;/ul&gt; | 
**authentication_header** | **String** | The authentication data used as part of request header to acquire or refresh an OAuth2 token. The data format depends on the authentication method used. Example of basic authentication format: Authorization: Basic [base64Encode(clientId + \&quot;:\&quot; + secret)] | 
**client_id** | **String** | Client identifier to connect to the provider | 
**discovery_endpoint** | **String** | Endpoint to retrieve the provider metadata | [optional] 
**logout_endpoint** | **String** | The endpoint to use for terminating the user&#39;s session at the identity provider. This value is automatically derived from the metadata information provided by the OIDC discovery endpoint. | [optional] 
**token_endpoint** | **String** | Token endpoint of the provider | 


