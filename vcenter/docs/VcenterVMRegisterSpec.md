# VSphereAutomation::VCenter::VcenterVMRegisterSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | Identifier of the datastore on which the virtual machine&#39;s configuration state is stored. If unset, VM.RegisterSpec.path must also be unset and VM.RegisterSpec.datastore-path must be set. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. | [optional] 
**datastore_path** | **String** | Datastore path for the virtual machine&#39;s configuration file in the format \&quot;[datastore name] path\&quot;. For example \&quot;[storage1] Test-VM/Test-VM.vmx\&quot;. If unset, both VM.RegisterSpec.datastore and VM.RegisterSpec.path must be set. | [optional] 
**name** | **String** | Virtual machine name. If unset, the display name from the virtual machine&#39;s configuration file will be used. | [optional] 
**path** | **String** | Path to the virtual machine&#39;s configuration file on the datastore corresponding to {@link #datastore). If unset, VM.RegisterSpec.datastore must also be unset and VM.RegisterSpec.datastore-path must be set. | [optional] 
**placement** | [**VcenterVMRegisterPlacementSpec**](VcenterVMRegisterPlacementSpec.md) |  | [optional] 


