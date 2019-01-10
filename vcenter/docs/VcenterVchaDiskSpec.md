# VSphereAutomation::VCenter::VcenterVchaDiskSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | The identifier of the datastore to put all the virtual disks on. This field needs to be set. If unset, then see vim.vm.RelocateSpec.datastore. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore:VCenter. | [optional] 


