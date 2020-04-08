# VSphereAutomation::VCenter::VcenterNamespacesInstancesStorageSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**limit** | **Integer** | The maximum amount of storage (in mebibytes) which can be utilized by the namespace for this specification. If unset, no limits are placed. | [optional] 
**policy** | **String** | ID of the storage policy. A Kubernetes storage class is created for this storage policy if it does not exist already. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile. | 


