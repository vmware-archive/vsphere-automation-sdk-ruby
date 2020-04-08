# VSphereAutomation::Appliance::ApplianceLocalAccountsUpdateConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**days_after_password_expiration** | **Integer** | Number of days after password expiration before the account will be locked | [optional] 
**email** | **String** | Email address of the local account | [optional] 
**enabled** | **Boolean** | Flag indicating if the account is enabled | [optional] 
**full_name** | **String** | Full name of the user | [optional] 
**inactive_after_password_expiration** | **Boolean** | Flag indicating if the account will be locked after password expiration | [optional] 
**max_days_between_password_change** | **Integer** | Maximum number of days between password change | [optional] 
**min_days_between_password_change** | **Integer** | Minimum number of days between password change | [optional] 
**old_password** | **String** | Old password of the user (required in case of the password change, not required if superAdmin user changes the password of the other user) | [optional] 
**password** | **String** | Password | [optional] 
**password_expires** | **Boolean** | Flag indicating if the account password expires | [optional] 
**password_expires_at** | **DateTime** | Date when the account&#39;s password will expire | [optional] 
**roles** | **Array&lt;String&gt;** | User roles | [optional] 
**warn_days_before_password_expiration** | **Integer** | Number of days of warning before password expires | [optional] 


