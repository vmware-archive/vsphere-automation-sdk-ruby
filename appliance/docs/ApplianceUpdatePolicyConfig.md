# VSphereAutomation::Appliance::ApplianceUpdatePolicyConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_url** | **String** | Current appliance update repository URL. | [optional] 
**username** | **String** | Username for the update repository | [optional] 
**password** | **String** | Password for the update repository | [optional] 
**check_schedule** | [**Array&lt;ApplianceUpdatePolicyTime&gt;**](ApplianceUpdatePolicyTime.md) | Schedule when the automatic check will be run. | 
**auto_stage** | **BOOLEAN** | Automatically stage the latest update if available. | 


