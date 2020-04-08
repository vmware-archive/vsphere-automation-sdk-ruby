# VSphereAutomation::VCenter::VcenterNamespacesInstancesUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_list** | [**Array&lt;VcenterNamespacesInstancesAccess&gt;**](VcenterNamespacesInstancesAccess.md) | Access control associated with the namespace. If unset, access controls on the namespace will not be modified. Existing pods from users will continue to run. | [optional] 
**description** | **String** | Description for the namespace. If unset, the description of the namespace will not be modified. | [optional] 
**resource_spec** | [**Object**](.md) | Resource quota updates on the namespace. Refer to vcenter.namespace_management.NamespaceResourceOptions.Info#updateResourceQuotaType and use vcenter.namespace_management.NamespaceResourceOptions#get for retrieving the type for the value for this field. For an example of this, see ResourceQuotaOptionsV1Update. If unset, the resource constraints on the namespace will not be modified. | [optional] 
**storage_specs** | [**Array&lt;VcenterNamespacesInstancesStorageSpec&gt;**](VcenterNamespacesInstancesStorageSpec.md) | Storage associated with the namespace. If unset, storage policies and their limit will not be modified. Pods which are already using persistent storage from the earlier version of storage policies will be able to access them till the datastores are attached to the worker nodes. | [optional] 


