# VSphereAutomation::Appliance::ApplianceUpdatePolicyInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_stage** | **Boolean** | Automatically stage the latest update if available. | 
**auto_update** | **Boolean** | Is the appliance updated automatically. If {@term set} the appliance may ignore the check schedule or auto-stage settings. | 
**certificate_check** | **Boolean** | Indicates whether certificates will be checked during patching. &lt;p&gt; Warning: If this {@term field} is set to false, an insecure connection is made to the update repository which can potentially put the appliance security at risk. | 
**check_schedule** | [**Array&lt;ApplianceUpdatePolicyTime&gt;**](ApplianceUpdatePolicyTime.md) | Schedule when the automatic check will be run. | 
**custom_url** | **String** | Current appliance update custom repository URL. | [optional] 
**default_url** | **String** | Current appliance update default repository URL. | 
**manual_control** | **Boolean** | Whether API client should allow the user to start update manually | 
**username** | **String** | Username for the update repository | [optional] 


