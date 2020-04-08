# VSphereAutomation::VCenter::VcenterLcmTasksInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identifier of the LCM task. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.lcm.task. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.lcm.task. | 
**status** | [**VcenterLcmTaskInfo**](VcenterLcmTaskInfo.md) |  | 
**task** | **String** | The identifier of the CIS task. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if unset, it represents the task execution has not started. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: cis.task. When operations return a value of this structure as a result, the field will be an identifier for the resource type: cis.task. | [optional] 
**type** | [**VcenterLcmTasksOperation**](VcenterLcmTasksOperation.md) |  | 


