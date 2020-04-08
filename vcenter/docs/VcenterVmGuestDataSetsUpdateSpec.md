# VSphereAutomation::VCenter::VcenterVmGuestDataSetsUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | A description of how the data set is used by its creator. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If set, the value is changed. | [optional] 
**disk_mode** | **Boolean** | If set, the data set is copied when the virtual machine is cloned or a snapshot is taken. Otherwise the data set is removed when a snapshot revert occurs or the virtual machine is cloned. XXX clone Info doc once its stable. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If set, the value is changed. XXX field name, wording and terminology needs work. &#39;disk&#39; mode (data is cloned &amp; snapshotted) vs &#39;VM&#39; mode was first suggestion. | [optional] 
**guest** | [**VcenterVmGuestDataSetsAccess**](VcenterVmGuestDataSetsAccess.md) |  | [optional] 
**host** | [**VcenterVmGuestDataSetsAccess**](VcenterVmGuestDataSetsAccess.md) |  | [optional] 
**size** | **Integer** | The total size of the data in bytes that can be used by this data set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If set, the value is changed. | [optional] 


