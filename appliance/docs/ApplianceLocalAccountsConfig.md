# VSphereAutomation::Appliance::ApplianceLocalAccountsConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **String** | Password | 
**old_password** | **String** | Old password of the user (required in case of the password change, not required if superAdmin user changes the password of the other user) | [optional] 
**full_name** | **String** | Full name of the user | [optional] 
**email** | **String** | Email address of the local account | [optional] 
**roles** | **Array&lt;String&gt;** | User roles | 
**enabled** | **BOOLEAN** | Flag indicating if the account is enabled | [optional] 
**password_expires** | **BOOLEAN** | Flag indicating if the account password expires | [optional] 
**password_expires_at** | **DateTime** | Date when the account&#39;s password will expire | [optional] 
**inactive_after_password_expiration** | **BOOLEAN** | Flag indicating if the account will be locked after password expiration | [optional] 
**days_after_password_expiration** | **Integer** | Number of days after password expiration before the account will be locked | [optional] 
**min_days_between_password_change** | **Integer** | Minimum number of days between password change | [optional] 
**max_days_between_password_change** | **Integer** | Maximum number of days between password change | [optional] 
**warn_days_before_password_expiration** | **Integer** | Number of days of warning before password expires | [optional] 


