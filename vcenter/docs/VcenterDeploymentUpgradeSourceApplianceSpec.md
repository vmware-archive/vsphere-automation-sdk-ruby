# VSphereAutomation::VCenter::VcenterDeploymentUpgradeSourceApplianceSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | The IP address or DNS resolvable name of the source appliance. | 
**https_port** | **Integer** | The HTTPS port of the source appliance. | [optional] 
**ssl_thumbprint** | **String** | SHA1 thumbprint of the server SSL certificate will be used for verification. | [optional] 
**ssl_verify** | **BOOLEAN** | SSL verification should be enabled or disabled for the source appliance validations. By default it is enabled and will use SSL certificate for verification. If thumbprint is provided, will use thumbprint for the verification. | [optional] 
**sso_admin_username** | **String** | The SSO administrator account on the source appliance. | 
**sso_admin_password** | **String** | The SSO administrator account password. | 
**root_password** | **String** | The password of the root user on the source appliance. | 
**ssh_verify** | **BOOLEAN** | Appliance SSH verification should be enabled or disabled. By default it is disabled and will not use any verification. If thumbprint is provided, thumbprint verification will be performed. | [optional] 
**ssh_thumbprint** | **String** | MD5 thumbprint of the server SSH key will be used for verification. | [optional] 


