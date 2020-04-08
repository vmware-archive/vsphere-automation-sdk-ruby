# VSphereAutomation::VCenter::VcenterHlmCommunityAddSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin_groups** | **Array&lt;String&gt;** | The list of groups to be added to which administrator access should be granted. Group names should be un UPN format. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**hostname** | **String** | The hostname for the target node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**port** | **String** | The HTTPS port of the target node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**ssl_thumbprint** | **String** | The SHA-256 thumbprint of the SSL certificate of the target node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**ssl_verify** | **Boolean** | SSL verification should be enabled or disabled. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | [optional] 
**token** | **String** | The base64 encoded authentication token usable in the target node&#39;s domain and issued by its Security Token Service service. The token should be prefixed with a type. Currently, only saml tokens are supported. For example: \&quot;sign&#x3D;LKJSDLKDJ...\&quot; where prefix is \&quot;sign&#x3D;\&quot; for a saml token. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


