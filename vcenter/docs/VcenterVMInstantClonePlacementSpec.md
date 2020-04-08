# VSphereAutomation::VCenter::VcenterVMInstantClonePlacementSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | Datastore on which the InstantCloned virtual machine&#39;s configuration state should be stored. This datastore will also be used for any virtual disks that are created as part of the virtual machine InstantClone operation. If field is unset, the system will use the datastore of the source virtual machine. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. | [optional] 
**folder** | **String** | Virtual machine folder into which the InstantCloned virtual machine should be placed. If field is unset, the system will use the virtual machine folder of the source virtual machine. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Folder. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Folder. | [optional] 
**resource_pool** | **String** | Resource pool into which the InstantCloned virtual machine should be placed. If field is unset, the system will use the resource pool of the source virtual machine. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ResourcePool. | [optional] 


