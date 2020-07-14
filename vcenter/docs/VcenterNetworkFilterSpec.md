# VSphereAutomation::VCenter::VcenterNetworkFilterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**networks** | **Array&lt;String&gt;** | Identifiers of networks that can match the filter. If unset or empty, networks with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Network. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Network. | [optional] 
**names** | **Array&lt;String&gt;** | Names that networks must have to match the filter (see Network.Summary.name). If unset or empty, networks with any name match the filter. | [optional] 
**types** | [**Array&lt;VcenterNetworkType&gt;**](VcenterNetworkType.md) | Types that networks must have to match the filter (see Network.Summary.type). If unset, networks with any type match the filter. | [optional] 
**folders** | **Array&lt;String&gt;** | Folders that must contain the network for the network to match the filter. If unset or empty, networks in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder. | [optional] 
**datacenters** | **Array&lt;String&gt;** | Datacenters that must contain the network for the network to match the filter. If unset or empty, networks in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter. | [optional] 


