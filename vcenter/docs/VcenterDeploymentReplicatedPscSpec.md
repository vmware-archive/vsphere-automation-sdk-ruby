# VSphereAutomation::VCenter::VcenterDeploymentReplicatedPscSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sso_site_name** | **String** | The SSO sitename that will be used in PSC replication. | [optional] 
**partner_hostname** | **String** | The IP address or DNS resolvable name of the partner PSC appliance. | 
**https_port** | **Integer** | The HTTPS port of the external PSC appliance. | [optional] 
**sso_admin_password** | **String** | The SSO administrator account password. | 
**ssl_thumbprint** | **String** | SHA1 thumbprint of the server SSL certificate will be used for verification. | [optional] 
**ssl_verify** | **BOOLEAN** | SSL verification should be enabled or disabled. | [optional] 


