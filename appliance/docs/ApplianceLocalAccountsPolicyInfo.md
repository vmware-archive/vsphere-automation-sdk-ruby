# VSphereAutomation::Appliance::ApplianceLocalAccountsPolicyInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**max_days** | **Integer** | Maximum number of days a password may be used. If the password is older than this, a password change will be forced. | [optional] 
**min_days** | **Integer** | Minimum number of days allowed between password changes. Any password changes attempted sooner than this will be rejected. | [optional] 
**warn_days** | **Integer** | Number of days warning given before a password expires. A zero means warning is given only upon the day of expiration. | [optional] 


