# VSphereAutomation::VCenter::VcenterResourcePoolCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu_allocation** | [**VcenterResourcePoolResourceAllocationCreateSpec**](VcenterResourcePoolResourceAllocationCreateSpec.md) |  | [optional] 
**memory_allocation** | [**VcenterResourcePoolResourceAllocationCreateSpec**](VcenterResourcePoolResourceAllocationCreateSpec.md) |  | [optional] 
**name** | **String** | Name of the resource pool. | 
**parent** | **String** | Parent of the created resource pool. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ResourcePool. | 


