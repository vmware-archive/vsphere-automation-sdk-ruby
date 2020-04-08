# VSphereAutomation::VCenter::VcenterDeploymentSourceInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_directory_domain** | **String** | The domain name of the Active Directory server to which the source vCenter Server is joined. | 
**data_migration_info** | [**VcenterDeploymentDataMigrationInfo**](VcenterDeploymentDataMigrationInfo.md) |  | [optional] 
**deployment_size** | [**VcenterDeploymentApplianceSize**](VcenterDeploymentApplianceSize.md) |  | 
**deployment_type** | [**VcenterDeploymentApplianceType**](VcenterDeploymentApplianceType.md) |  | 
**dns_servers** | **Array&lt;String&gt;** | IP addresses of the DNS servers of the Active Directory server. | 
**hostname** | **String** | The IP address or DNS resolvable name of the source vCenter Server. | 
**sso_domain_name** | **String** | The SSO domain name of the source vCenter Server. | 
**version** | **String** | Source vCenter Server version. | 


