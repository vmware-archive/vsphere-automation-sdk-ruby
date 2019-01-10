# VSphereAutomation::VCenter::VcenterDeploymentLocationSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | The IP address or DNS resolvable name of the container. | 
**https_port** | **Integer** | The HTTPS port of the container. | [optional] 
**ssl_thumbprint** | **String** | SHA1 thumbprint of the server SSL certificate will be used for verification. | [optional] 
**ssl_verify** | **BOOLEAN** | SSL verification should be enabled or disabled. If {@name #sslVerify} is true and and {@name #sslThumbprint} is {@term unset}, the CA certificate will be used for verification. If {@name #sslVerify} is true and {@name #sslThumbprint} is set then the thumbprint will be used for verification. No verification will be performed if {@name #sslVerify} value is set to false. | [optional] 
**username** | **String** | The administrator account on the host. | 
**password** | **String** | The administrator account password. | 


