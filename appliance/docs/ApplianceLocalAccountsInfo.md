# VSphereAutomation::Appliance::ApplianceLocalAccountsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fullname** | **String** | Full name of the user | [optional] 
**email** | **String** | Email address of the local account | [optional] 
**roles** | **Array&lt;String&gt;** | User roles | 
**enabled** | **BOOLEAN** | Flag indicating if the account is enabled | 
**has_password** | **BOOLEAN** | Is the user password set. | 
**last_password_change** | **DateTime** | Date and time password was changed. | [optional] 
**password_expires_at** | **DateTime** | Date when the account&#39;s password will expire | [optional] 
**inactive_at** | **DateTime** | Date and time account will be locked after password expiration. | [optional] 
**min_days_between_password_change** | **Integer** | Minimum number of days between password change | [optional] 
**max_days_between_password_change** | **Integer** | Maximum number of days between password change | [optional] 
**warn_days_before_password_expiration** | **Integer** | Number of days of warning before password expires | [optional] 


