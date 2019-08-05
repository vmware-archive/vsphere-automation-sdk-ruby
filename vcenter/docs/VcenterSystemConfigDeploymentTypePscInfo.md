# VSphereAutomation::VCenter::VcenterSystemConfigDeploymentTypePscInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sso_admin_username** | **String** | The SSO administrator username for example \&quot;administrator@vsphere.local\&quot; | 
**sso_admin_password** | **String** | The SSO administrator account password. | 
**skip_ad_domain_join** | **Boolean** | A flag to skip domain join operation for embedded node during convergence. If the Platform Services Controller node is joined to an AD domain, the same is expected to be configured for converged embedded node, but there can be situations (e.g. no domain admin credentials with VI admin) during convergence when needs to be done later via existing UI option. | [optional] 
**ad_domain** | [**VcenterSystemConfigDeploymentTypeDomainInfo**](VcenterSystemConfigDeploymentTypeDomainInfo.md) |  | [optional] 


