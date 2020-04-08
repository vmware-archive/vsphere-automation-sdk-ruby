# VSphereAutomation::VCenter::VcenterNsxPlacementSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**create_resource_pool** | **Boolean** | Specifies if a new resource pool should be created. If it is set to true, a new resource pool with the name PlacementSpec.resource-pool-name will be created and used for NSX Edge node(s). If it is set to false and PlacementSpec.resource-pool is set, then the existing resource pool identified by PlacementSpec.resource-pool will be used for NSX Edge node(s). If it is set to false and PlacementSpec.resource-pool unset, then the root resource pool will be associated with the NSX Edge node(s). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**resource_pool** | **String** | Identifier for the resource pool associated with the NSX Edge node(s). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when PlacementSpec.create-resource-pool is true. If unset and PlacementSpec.create-resource-pool is set to false, then the root resource pool will be associated with the NSX Edge node(s). When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ResourcePool. | [optional] 
**resource_pool_name** | **String** | Name of the new resource pool to be created and associated with the NSX Edge node(s). Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when PlacementSpec.create-resource-pool is false. | [optional] 


