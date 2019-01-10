# VSphereAutomation::Appliance::ApplianceUpdatePolicyInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_url** | **String** | Current appliance update custom repository URL. | [optional] 
**default_url** | **String** | Current appliance update default repository URL. | 
**username** | **String** | Username for the update repository | [optional] 
**check_schedule** | [**Array&lt;ApplianceUpdatePolicyTime&gt;**](ApplianceUpdatePolicyTime.md) | Schedule when the automatic check will be run. | 
**auto_stage** | **BOOLEAN** | Automatically stage the latest update if available. | 
**auto_update** | **BOOLEAN** | Is the appliance updated automatically. If {@term set} the appliance may ignore the check schedule or auto-stage settings. | 
**manual_control** | **BOOLEAN** | Whether API client should allow the user to start update manually | 


