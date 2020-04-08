# VSphereAutomation::VCenter::VcenterNamespacesInstancesCreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_list** | [**Array&lt;VcenterNamespacesInstancesAccess&gt;**](VcenterNamespacesInstancesAccess.md) | Access controls associated with the namespace. If unset, only users with Administrator role can access the namespace. | [optional] 
**cluster** | **String** | Identifier of the cluster on which the namespace is being created. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource. | 
**description** | **String** | Description for the namespace. If unset, no description is added to the namespace. | [optional] 
**namespace** | **String** | Identifier of the namespace. This has DNS_LABEL restrictions as specified in . This must be an alphanumeric (a-z and 0-9) string and with maximum length of 63 characters and with the &#39;-&#39; character allowed anywhere except the first or last character. This name is unique across all Namespaces in this vCenter server. In this version, this maps to the name of a Kubernetes namespace. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.namespaces.Instance. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.namespaces.Instance. | 
**resource_spec** | [**Object**](.md) | Resource quota on the namespace. Refer to vcenter.namespace_management.NamespaceResourceOptions.Info#createResourceQuotaType and use vcenter.namespace_management.NamespaceResourceOptions#get for retrieving the type for the value for this field. For an example of this, see ResourceQuotaOptionsV1. If unset, no resource limits will be set on the namespace. | [optional] 
**storage_specs** | [**Array&lt;VcenterNamespacesInstancesStorageSpec&gt;**](VcenterNamespacesInstancesStorageSpec.md) | Storage associated with the namespace. If unset, storage policies will not be associated with the namespace which will prevent users from being able to provision pods with persistent storage on the namespace. Users will be able to provision pods which use local storage. | [optional] 


