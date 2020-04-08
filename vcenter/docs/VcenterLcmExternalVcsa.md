# VSphereAutomation::VCenter::VcenterLcmExternalVcsa

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**https_port** | **Integer** | The HTTPS port of the external PSC appliance. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, defaults to 443 | [optional] 
**psc_hostname** | **String** | The IP address or DNS resolvable name of the remote PSC to which this configuring vCenter Server will be registered. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**ssl_thumbprint** | **String** | SHA1 thumbprint of the server SSL certificate which will be used for verification. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If ExternalVcsa.ssl-verify is set to False, this field can be omitted. | [optional] 
**ssl_verify** | **Boolean** | A flag to indicate whether the SSL verification is required. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If ExternalVcsa.ssl-thumbprint is provided, this field can be omitted If unset, defaults to False | [optional] 
**sso_admin_password** | **String** | Administrator password of the external PSC to register with. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**sso_domain_name** | **String** | Domain name of the external PSC. For example, &#39;vsphere.local&#39;. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


