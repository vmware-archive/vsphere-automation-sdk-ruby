# VSphereAutomation::VCenter::VcenterVmTemplateLibraryItemsDeployPlacementSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**folder** | **String** | Virtual machine folder into which the deployed virtual machine should be placed. | [optional] 
**resource_pool** | **String** | Resource pool into which the deployed virtual machine should be placed. | [optional] 
**host** | **String** | Host onto which the virtual machine should be placed. If {@name #host} and {@name #resourcePool} are both specified, {@name #resourcePool} must belong to {@name #host}. If {@name #host} and {@name #cluster} are both specified, {@name #host} must be a member of {@name #cluster}. | [optional] 
**cluster** | **String** | Cluster onto which the deployed virtual machine should be placed. If {@name #cluster} and {@name #resourcePool} are both specified, {@name #resourcePool} must belong to {@name #cluster}. If {@name #cluster} and {@name #host} are both specified, {@name #host} must be a member of {@name #cluster}. | [optional] 


