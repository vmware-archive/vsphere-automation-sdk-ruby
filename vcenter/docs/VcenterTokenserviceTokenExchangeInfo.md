# VSphereAutomation::VCenter::VcenterTokenserviceTokenExchangeInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | The security token issued by the server in response to the token exchange request. Token is base64-encoded. | 
**expires_in** | **Integer** | The validity lifetime, in seconds, of the token issued by the server. | [optional] 
**issued_token_type** | **String** | An identifier, that indicates the type of the security token in the {@link Info#access_token} parameter. | 
**refresh_token** | **String** | A refresh token can be issued in cases where the client of the token exchange needs the ability to access a resource even when the original credential is no longer valid. | [optional] 
**scope** | **String** | Scope of the issued security token. | [optional] 
**token_type** | **String** | A case-insensitive value specifying the method of using the access token issued. | 


