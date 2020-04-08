# VSphereAutomation::VCenter::VcenterTokenserviceTokenExchangeExchangeSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actor_token** | **String** | A security token that represents the identity of the acting party. Typically, this will be the party that is authorized to use the requested security token and act on behalf of the subject. | [optional] 
**actor_token_type** | **String** | An identifier, that indicates the type of the security token in the {@link ExchangeSpec#actor_token} parameter. | [optional] 
**audience** | **String** | The logical name of the target service where the client intends to use the requested security token. This serves a purpose similar to the {@link ExchangeSpec#resource} parameter, but with the client providing a logical name rather than a location. | [optional] 
**grant_type** | **String** | The value of {@link TokenExchange#TOKEN_EXCHANGE_GRANT} indicates that a token exchange is being performed. | 
**requested_token_type** | **String** | An identifier for the type of the requested security token. If the requested type is unspecified, the issued token type is at the discretion of the server and may be dictated by knowledge of the requirements of the service or resource indicated by the {@link ExchangeSpec#resource} or {@link ExchangeSpec#audience} parameter. | [optional] 
**resource** | **String** | Indicates the location of the target service or resource where the client intends to use the requested security token. | [optional] 
**scope** | **String** | A list of space-delimited, case-sensitive strings, that allow the client to specify the desired scope of the requested security token in the context of the service or resource where the token will be used. | [optional] 
**subject_token** | **String** | A security token that represents the identity of the party on behalf of whom exchange is being made. Typically, the subject of this token will be the subject of the security token issued. Token is base64-encoded. | 
**subject_token_type** | **String** | An identifier, that indicates the type of the security token in the {@link ExchangeSpec#subject_token} parameter. | 


