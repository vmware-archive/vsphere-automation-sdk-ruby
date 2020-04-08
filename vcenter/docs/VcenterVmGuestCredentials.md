# VSphereAutomation::VCenter::VcenterVmGuestCredentials

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**interactive_session** | **Boolean** | If set, the operation will interact with the logged-in desktop session in the guest. This requires that the logged-on user matches the user specified by the Credentials. This is currently only supported for USERNAME_PASSWORD. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**password** | **String** | password. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is USERNAME_PASSWORD. | [optional] 
**saml_token** | **String** | SAML Bearer Token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is optional and it is only relevant when the value of Credentials.type is SAML_BEARER_TOKEN. | [optional] 
**type** | [**VcenterVmGuestCredentialsType**](VcenterVmGuestCredentialsType.md) |  | 
**user_name** | **String** | For SAML_BEARER_TOKEN, this is the guest user to be associated with the credentials. For USERNAME_PASSWORD this is the guest username. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If no user is specified for SAML_BEARER_TOKEN, a guest dependent mapping will decide what guest user account is applied. | [optional] 


