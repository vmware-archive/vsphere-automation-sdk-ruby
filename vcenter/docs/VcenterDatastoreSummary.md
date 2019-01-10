# VSphereAutomation::VCenter::VcenterDatastoreSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | Identifier of the datastore. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. | 
**name** | **String** | Name of the datastore. | 
**type** | [**VcenterDatastoreType**](VcenterDatastoreType.md) |  | 
**free_space** | **Integer** | Available space of this datastore, in bytes.   The server periodically updates this value.  This field will be unset if the available space of this datastore is not known. | [optional] 
**capacity** | **Integer** | Capacity of this datastore, in bytes.   The server periodically updates this value.  This field will be unset if the capacity of this datastore is not known. | [optional] 


