# VSphereAutomation::VCenter::VcenterOvfLibraryItemDeploymentTarget

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_pool_id** | **String** | Identifier of the resource pool to which the virtual machine or virtual appliance should be attached. | 
**host_id** | **String** | Identifier of the target host on which the virtual machine or virtual appliance will run. The target host must be a member of the cluster that contains the resource pool identified by {@link #resourcePoolId}. | [optional] 
**folder_id** | **String** | Identifier of the vCenter folder that should contain the virtual machine or virtual appliance. The folder must be virtual machine folder. | [optional] 


