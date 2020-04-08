# VSphereAutomation::VCenter::VcenterResourcePoolSharesInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**level** | [**VcenterResourcePoolSharesInfoLevel**](VcenterResourcePoolSharesInfoLevel.md) |  | 
**shares** | **Integer** | When ResourcePool.SharesInfo.level is set to CUSTOM, it is the number of shares allocated. Otherwise, this value is ignored.   There is no unit for this value. It is a relative measure based on the settings for other resource pools.  This field is optional and it is only relevant when the value of ResourcePool.SharesInfo.level is CUSTOM. | [optional] 


