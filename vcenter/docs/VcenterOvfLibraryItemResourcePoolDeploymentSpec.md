# VSphereAutomation::VCenter::VcenterOvfLibraryItemResourcePoolDeploymentSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name assigned to the deployed target virtual machine or virtual appliance. | [optional] 
**annotation** | **String** | Annotation assigned to the deployed target virtual machine or virtual appliance. | [optional] 
**accept_all_eula** | **BOOLEAN** | Whether to accept all End User License Agreements. See {@link OvfSummary#eulas}. | 
**network_mappings** | **Array&lt;Object&gt;** | Specification of the target network to use for sections of type ovf:NetworkSection in the OVF descriptor. The key in the {@term map} is the section identifier of the ovf:NetworkSection section in the OVF descriptor and the value is the target network to be used for deployment. | [optional] 
**storage_mappings** | **Array&lt;Object&gt;** | Specification of the target storage to use for sections of type vmw:StorageGroupSection in the OVF descriptor. The key in the {@term map} is the section identifier of the ovf:StorageGroupSection section in the OVF descriptor and the value is the target storage specification to be used for deployment. See {@link StorageGroupMapping}. | [optional] 
**storage_provisioning** | [**VcenterOvfDiskProvisioningType**](VcenterOvfDiskProvisioningType.md) |  | [optional] 
**storage_profile_id** | **String** | Default storage profile to use for all sections of type vmw:StorageSection in the OVF descriptor. | [optional] 
**locale** | **String** | The locale to use for parsing the OVF descriptor. | [optional] 
**flags** | **Array&lt;String&gt;** | Flags to be use for deployment. The supported flag values can be obtained using {@link ImportFlag#list}. | [optional] 
**additional_parameters** | **Array&lt;Object&gt;** | Additional OVF parameters that may be needed for the deployment. Additional OVF parameters may be required by the OVF descriptor of the OVF package in the library item. Examples of OVF parameters that can be specified through this {@term field} include, but are not limited to: &lt;ul&gt; &lt;li&gt;{@link DeploymentOptionParams}&lt;/li&gt; &lt;li&gt;{@link ExtraConfigParams}&lt;/li&gt; &lt;li&gt;{@link IpAllocationParams}&lt;/li&gt; &lt;li&gt;{@link PropertyParams}&lt;/li&gt; &lt;li&gt;{@link ScaleOutParams}&lt;/li&gt; &lt;li&gt;{@link VcenterExtensionParams}&lt;/li&gt; &lt;/ul&gt; | [optional] 
**default_datastore_id** | **String** | Default datastore to use for all sections of type vmw:StorageSection in the OVF descriptor. | [optional] 


