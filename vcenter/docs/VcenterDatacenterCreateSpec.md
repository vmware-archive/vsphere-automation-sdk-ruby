# VSphereAutomation::VCenter::VcenterDatacenterCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the datacenter to be created. | 
**folder** | **String** | Datacenter folder in which the new datacenter should be created. This field is currently required. In the future, if this field is unset, the system will attempt to choose a suitable folder for the datacenter; if a folder cannot be chosen, the datacenter creation operation will fail. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Folder. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Folder. | [optional] 


