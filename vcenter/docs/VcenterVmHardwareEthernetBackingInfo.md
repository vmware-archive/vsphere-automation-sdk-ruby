# VSphereAutomation::VCenter::VcenterVmHardwareEthernetBackingInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**VcenterVmHardwareEthernetBackingType**](VcenterVmHardwareEthernetBackingType.md) |  | 
**network** | **String** | Identifier of the network backing the virtual Ethernet adapter. If unset, the identifier of the network backing could not be determined. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network. | [optional] 
**network_name** | **String** | Name of the standard portgroup backing the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is STANDARD_PORTGROUP. | [optional] 
**host_device** | **String** | Name of the device backing the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is HOST_DEVICE. | [optional] 
**distributed_switch_uuid** | **String** | UUID of the distributed virtual switch that backs the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is DISTRIBUTED_PORTGROUP. | [optional] 
**distributed_port** | **String** | Key of the distributed virtual port that backs the virtual Ethernet adapter. This field will be unset if the virtual Ethernet device is not bound to a distributed virtual port; this can happen if the virtual machine is powered off or the virtual Ethernet device is not connected. | [optional] 
**connection_cookie** | **Integer** | Server-generated cookie that identifies the connection to the port. This ookie may be used to verify that the virtual machine is the rightful owner of the port. This field will be unset if the virtual Ethernet device is not bound to a distributed virtual port; this can happen if the virtual machine is powered off or the virtual Ethernet device is not connected. | [optional] 
**opaque_network_type** | **String** | Type of the opaque network that backs the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is OPAQUE_NETWORK. | [optional] 
**opaque_network_id** | **String** | Identifier of the opaque network that backs the virtual Ethernet adapter. This field is optional and it is only relevant when the value of Ethernet.BackingInfo.type is OPAQUE_NETWORK. | [optional] 


