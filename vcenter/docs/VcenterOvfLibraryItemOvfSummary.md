# VSphereAutomation::VCenter::VcenterOvfLibraryItemOvfSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Default name for the virtual machine or virtual appliance. | [optional] 
**annotation** | **String** | Default annotation for the virtual machine or virtual appliance. | [optional] 
**eul_as** | **Array&lt;String&gt;** | End User License Agreements specified in the OVF descriptor. All end user license agreements must be accepted in order for the {@name LibraryItem#deploy} {@term operation} to succeed. See {@link ResourcePoolDeploymentSpec#acceptAllEula}. | 
**networks** | **Array&lt;String&gt;** | Section identifiers for sections of type ovf:NetworkSection in the OVF descriptor. These identifiers can be used as keys in {@link ResourcePoolDeploymentSpec#networkMappings}. | [optional] 
**storage_groups** | **Array&lt;String&gt;** | Section identifiers for sections of type vmw:StorageGroupSection in the OVF descriptor. These identifiers can be used as keys in {@link ResourcePoolDeploymentSpec#storageMappings}. | [optional] 
**additional_params** | **Array&lt;Object&gt;** | Additional OVF parameters which can be specified for the deployment target. These OVF parameters can be inspected, optionally modified, and used as values in {@link ResourcePoolDeploymentSpec#additionalParameters} for the {@name LibraryItem#deploy} {@term operation}. | [optional] 


