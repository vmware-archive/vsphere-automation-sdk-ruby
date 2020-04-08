# VSphereAutomation::Appliance::ApplianceRecoveryRestoreMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**applicable** | **Boolean** | Does the VCSA match the deployment type, network properties            and version of backed up VC | 
**boxname** | **String** | Box name is PNID/ FQDN etc | 
**comment** | **String** | Custom comment | 
**messages** | [**Array&lt;ApplianceRecoveryRestoreLocalizableMessage&gt;**](ApplianceRecoveryRestoreLocalizableMessage.md) | Any messages if the backup is not aplicable | 
**parts** | **Array&lt;String&gt;** | List of parts included in the backup. | 
**sso_login_required** | **Boolean** | Is SSO login required for the vCenter server. | [optional] 
**timestamp** | **DateTime** | Time when this backup was completed. | 
**version** | **String** | VCSA version | 


