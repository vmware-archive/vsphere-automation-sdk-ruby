# VSphereAutomation::VCenter::VcenterDatastoreFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastores** | **Array&lt;String&gt;** | Identifiers of datastores that can match the filter. If unset or empty, datastores with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datastore. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datastore. | [optional] 
**names** | **Array&lt;String&gt;** | Names that datastores must have to match the filter (see Datastore.Info.name). If unset or empty, datastores with any name match the filter. | [optional] 
**types** | [**Array&lt;VcenterDatastoreType&gt;**](VcenterDatastoreType.md) | Types that datastores must have to match the filter (see Datastore.Summary.type). If unset or empty, datastores with any type match the filter. | [optional] 
**folders** | **Array&lt;String&gt;** | Folders that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
**datacenters** | **Array&lt;String&gt;** | Datacenters that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 


