# VSphereAutomation::VCenter::VcenterNamespacesInstancesSetSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_list** | [**Array&lt;VcenterNamespacesInstancesAccess&gt;**](VcenterNamespacesInstancesAccess.md) | Access control associated with the namespace. If unset, the existing access controls on the namespace will be removed and users will not be able to access this namespace to create new pods. Existing pods from users will continue to run. | [optional] 
**description** | **String** | Description for the namespace. If unset, the description of the namespace will be cleared. | [optional] 
**resource_spec** | [**Object**](.md) | Resource quota for the namespace. This will replace the existing resource constraints on the namespace in entirety. Refer to vcenter.namespace_management.NamespaceResourceOptions.Info#createResourceQuotaType and use vcenter.namespace_management.NamespaceResourceOptions#get for retrieving the type for the value for this field. For an example of this, see ResourceQuotaOptionsV1. If unset, the resource constraints on the namespace will be cleared. | [optional] 
**storage_specs** | [**Array&lt;VcenterNamespacesInstancesStorageSpec&gt;**](VcenterNamespacesInstancesStorageSpec.md) | Storage associated with the namespace. If unset, the existing storage policies will be disassociated with the namespace and existing limits will be cleared. Pods which are already using persistent storage from the earlier version of storage policies will be able to access them till the datastores are attached to the worker nodes. | [optional] 


