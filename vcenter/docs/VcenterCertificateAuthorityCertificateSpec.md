# VSphereAutomation::VCenter::VcenterCertificateAuthorityCertificateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**common_name** | **String** | The common name of the host for which certificate is generated. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**country** | **String** | Country field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**email_address** | **String** | Email field in Certificate extensions. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**hostname** | **String** | Hostname field in Certificate extensions. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**ip_address** | **String** | IPAddress of the of the host for which certificate is generated. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset IPAddress will not be included in SAN. | [optional] 
**key_size** | **Integer** | The size of the key to be used for public and private key generation. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset the key size will be &#39;2048&#39;. | [optional] 
**locality** | **String** | Locality field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**organization** | **String** | Organization field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**organization_unit** | **String** | Organization unit field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**state_or_province** | **String** | State field in certificate subject. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**validity** | **Integer** | Validity field takes as input the number of years for which the generated certificate is to be made valid. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset validity will be set as 2 years. | [optional] 


