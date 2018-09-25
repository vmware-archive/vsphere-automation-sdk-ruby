# VSphereAutomation::VCenter::VcenterDatacenterFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datacenters** | **Array&lt;String&gt;** | Identifiers of datacenters that can match the filter. If unset or empty, datacenters with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 
**names** | **Array&lt;String&gt;** | Names that datacenters must have to match the filter (see Datacenter.Info.name). If unset or empty, datacenters with any name match the filter. | [optional] 
**folders** | **Array&lt;String&gt;** | Folders that must contain the datacenters for the datacenter to match the filter. If unset or empty, datacenters in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 


