# VSphereAutomation::VAPI::VapiMetadataAuthenticationAuthenticationInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scheme_type** | [**VapiMetadataAuthenticationAuthenticationInfoSchemeType**](VapiMetadataAuthenticationAuthenticationInfoSchemeType.md) |  | 
**session_manager** | **String** | In a session aware authentication scheme, a session manager is required that supports {@code create}, {@code delete} and {@code keepAlive} {@term operations}. The fully qualified {@term service} name of the session manager is provided in {@link AuthenticationInfo#sessionManager} {@term field}. This {@term service} is responsible for handling sessions. | [optional] 
**scheme** | **String** | String identifier of the authentication scheme. &lt;p&gt; Following are the supported authentication schemes by the infrastructure: &lt;ul&gt; &lt;li&gt;The identifier {@code vapi.std.security.saml_hok_token} for SAML holder of key token based authentication mechanism. &lt;/li&gt; &lt;li&gt;The identifier {@code vapi.std.security.bearer_token} for SAML bearer token based authentication mechanism. &lt;/li&gt; &lt;li&gt;The identifier {@code vapi.std.security.session_id} for session based authentication mechanism. &lt;/li&gt; &lt;li&gt;The identifier {@code vapi.std.security.user_pass} for username and password based authentication mechanism. &lt;/li&gt; &lt;/ul&gt; | 


