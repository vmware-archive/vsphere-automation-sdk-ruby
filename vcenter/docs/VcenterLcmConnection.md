# VSphereAutomation::VCenter::VcenterLcmConnection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | The IP address or DNS resolvable name of the ESX/VC host. If a DNS resolvable name is provided, it must be resolvable from the machine that is running the installer. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**https_port** | **Integer** | The port number for the ESX/VC. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, defaults to 443 | [optional] 
**password** | **String** | The password of the &#39;username&#39; on the ESX/VC host. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**ssl_thumbprint** | **String** | Thumbprint for SSL verification. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If Connection.ssl-verify if false, this field is not required | [optional] 
**ssl_verify** | **Boolean** | A flag to indicate whether the ssl verification is required. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If Connection.ssl-thumbprint is provided, this field can be omitted If unset, defaults to True | [optional] 
**username** | **String** | A username with administrative privileges on the ESX/VC host. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


