# VSphereAutomation::VCenter::VcenterDeploymentRemotePscSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**psc_hostname** | **String** | The IP address or DNS resolvable name of the remote PSC to which this configuring vCenter Server will be registered to. | 
**https_port** | **Integer** | The HTTPS port of the external PSC appliance. | [optional] 
**sso_admin_password** | **String** | The SSO administrator account password. | 
**ssl_thumbprint** | **String** | SHA1 thumbprint of the server SSL certificate will be used for verification when ssl_verify field is set to true. | [optional] 
**ssl_verify** | **BOOLEAN** | SSL verification should be enabled or disabled. If {@name #sslVerify} is true and and {@name #sslThumbprint} is {@term unset}, the CA certificate will be used for verification. If {@name #sslVerify} is true and {@name #sslThumbprint} is set then the thumbprint will be used for verification. No verification will be performed if {@name #sslVerify} value is set to false. | [optional] 


