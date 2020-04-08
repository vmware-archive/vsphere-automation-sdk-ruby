# VSphereAutomation::VCenter::VcenterVmGuestDataSetsCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | A description of how the data set is used by its creator. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**disk_mode** | **Boolean** | If set, the data set treated like a diks on certain virtual machine operations. The data set is copied when the virtual machine is cloned or a snapshot is taken. Otherwise the data set is considered a proeprty of the virtual machine, and is not included in a a snapshot operation or when the virtual machine is cloned. XXX field name, wording and terminology needs work. &#39;disk&#39; mode (data is cloned &amp; snapshotted) vs &#39;VM&#39; mode was first suggestion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, the value is true. | [optional] 
**guest** | [**VcenterVmGuestDataSetsAccess**](VcenterVmGuestDataSetsAccess.md) |  | 
**host** | [**VcenterVmGuestDataSetsAccess**](VcenterVmGuestDataSetsAccess.md) |  | 
**name** | **String** | The name of the data set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**persist** | **Boolean** | If set, the data is persisted across virtual machine power cycles. Otherwise data is cleared when the virtual machine is powered off. XXX is there any real use case? This is basically guestVars. Is it an error if a entry is set in offline mode for a non-persistent data set?. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, the value is false. | [optional] 
**size** | **Integer** | The total size in bytes of the Entry data that can be used by this data set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


