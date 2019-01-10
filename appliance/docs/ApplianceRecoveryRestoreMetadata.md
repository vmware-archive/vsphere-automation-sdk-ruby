# VSphereAutomation::Appliance::ApplianceRecoveryRestoreMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **DateTime** | Time when this backup was completed. | 
**parts** | **Array&lt;String&gt;** | List of parts included in the backup. | 
**version** | **String** | VCSA version | 
**boxname** | **String** | Box name is PNID/ FQDN etc | 
**sso_login_required** | **BOOLEAN** | Is SSO login required for the vCenter server. | [optional] 
**comment** | **String** | Custom comment | 
**applicable** | **BOOLEAN** | Does the VCSA match the deployment type, network properties            and version of backed up VC | 
**messages** | [**Array&lt;ApplianceRecoveryRestoreLocalizableMessage&gt;**](ApplianceRecoveryRestoreLocalizableMessage.md) | Any messages if the backup is not aplicable | 


