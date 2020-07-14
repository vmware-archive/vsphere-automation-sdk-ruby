# VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareEthernetBackingType**](VcenterVmHardwareEthernetBackingType.md) |  | 
**network** | **String** | Identifier of the network that backs the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingSpec.type is one of STANDARD_PORTGROUP, DISTRIBUTED_PORTGROUP, or OPAQUE_NETWORK. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network. | [optional] 
**distributed_port** | **String** | Key of the distributed virtual port that backs the virtual Ethernet adapter. Depending on the type of the Portgroup, the port may be specified using this field. If the portgroup type is early-binding (also known as static), a port is assigned when the Ethernet adapter is configured to use the port. The port may be either automatically or specifically assigned based on the value of this field. If the portgroup type is ephemeral, the port is created and assigned to a virtual machine when it is powered on and the Ethernet adapter is connected. This field cannot be specified as no free ports exist before use. May be used to specify a port when the network specified on the Ethernet.BackingSpec.network field is a static or early binding distributed portgroup. If unset, the port will be automatically assigned to the Ethernet adapter based on the policy embodied by the portgroup type. | [optional] 


