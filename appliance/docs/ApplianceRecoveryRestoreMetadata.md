# VSphereAutomation::Appliance::ApplianceRecoveryRestoreMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **DateTime** | Time when this backup was completed. | [optional] 
**parts** | **Array&lt;String&gt;** | List of parts included in the backup. | [optional] 
**version** | **String** | VCSA version | [optional] 
**boxname** | **String** | Box name is PNID/ FQDN etc | [optional] 
**sso_login_required** | **BOOLEAN** | Is SSO login required for the vCenter server. | [optional] 
**comment** | **String** | Custom comment | [optional] 
**applicable** | **BOOLEAN** | Does the VCSA match the deployment type, network properties            and version of backed up VC | [optional] 
**messages** | [**Array&lt;ApplianceRecoveryRestoreLocalizableMessage&gt;**](ApplianceRecoveryRestoreLocalizableMessage.md) | Any messages if the backup is not aplicable | [optional] 


