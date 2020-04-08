# VSphereAutomation::Appliance::ApplianceLocalAccountsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the local account | [optional] 
**enabled** | **Boolean** | Flag indicating if the account is enabled | 
**fullname** | **String** | Full name of the user | [optional] 
**has_password** | **Boolean** | Is the user password set. | 
**inactive_at** | **DateTime** | Date and time account will be locked after password expiration. | [optional] 
**last_password_change** | **DateTime** | Date and time password was changed. | [optional] 
**max_days_between_password_change** | **Integer** | Maximum number of days between password change | [optional] 
**min_days_between_password_change** | **Integer** | Minimum number of days between password change | [optional] 
**password_expires_at** | **DateTime** | Date when the account&#39;s password will expire | [optional] 
**roles** | **Array&lt;String&gt;** | User roles | 
**warn_days_before_password_expiration** | **Integer** | Number of days of warning before password expires | [optional] 


