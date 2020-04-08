# VSphereAutomation::Appliance::ApplianceUpdatePolicyConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_stage** | **Boolean** | Automatically stage the latest update if available. | 
**certificate_check** | **Boolean** | Indicates whether certificates will be checked during patching. &lt;p&gt; Warning: Setting this {@term field} to false will result in an insecure connection to update repository which can potentially put the appliance security at risk. | [optional] 
**check_schedule** | [**Array&lt;ApplianceUpdatePolicyTime&gt;**](ApplianceUpdatePolicyTime.md) | Schedule when the automatic check will be run. | 
**custom_url** | **String** | Current appliance update repository URL. | [optional] 
**password** | **String** | Password for the update repository | [optional] 
**username** | **String** | Username for the update repository | [optional] 


