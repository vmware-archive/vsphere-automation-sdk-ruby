# VSphereAutomation::VCenter::VcenterVchaPlacementInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bios_uuid** | **String** | BIOS UUID for the node. If unset, the information is currently unavailable. | [optional] 
**cluster** | **String** | The identifier of the cluster of which PlacementInfo.host is member. If unset, PlacementInfo.host is a standalone host. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource:VCenter. | [optional] 
**cluster_name** | **String** | The name of the cluster of which PlacementInfo.host is member. If unset, PlacementInfo.host is a standalone host. | [optional] 
**datacenter** | **String** | The identifier of the datacenter of the VCHA node. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datacenter:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datacenter:VCenter. | 
**datacenter_name** | **String** | The name of the datacenter of the VCHA node. | 
**ha_network** | **String** | The identifier of the Network object used for the HA network. If unset, the information is currently unavailable or the haNetwork is not configured. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter. | [optional] 
**ha_network_name** | **String** | The name of the Network object used for the HA network. If unset, the information is currently unavailable or the haNetwork is not configured. | [optional] 
**ha_network_type** | [**VcenterVchaNetworkType**](VcenterVchaNetworkType.md) |  | [optional] 
**host** | **String** | The identifier of the host of the VCHA node. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: HostSystem:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: HostSystem:VCenter. | 
**host_name** | **String** | The name of the host of the VCHA node. | 
**management_network** | **String** | The identifier of the Network object used for the Management network. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter. | 
**management_network_name** | **String** | The name of the Network object used for the Management network. | 
**management_network_type** | [**VcenterVchaNetworkType**](VcenterVchaNetworkType.md) |  | 
**management_vcenter_name** | **String** | The hostname of the vCenter server that is managing the VCHA node. | 
**management_vcenter_server_guid** | **String** | The unique identifier of the vCenter server that is managing the VCHA node. This field is optional because it was added in a newer version than its parent node. | [optional] 
**storage** | [**VcenterVchaDiskInfo**](VcenterVchaDiskInfo.md) |  | 
**vm_name** | **String** | The virtual machine name of the VCHA node. | 


