# VSphereAutomation::VCenter::VcenterVchaClusterActiveSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ha_network_type** | [**VcenterVchaNetworkType**](VcenterVchaNetworkType.md) |  | [optional] 
**ha_network** | **String** | The identifier of the Network object used for the HA network.  If the Cluster.ActiveSpec.ha-network field is set, then the Cluster.ActiveSpec.ha-network-type field must be set.  If the Cluster.ActiveSpec.ha-network field is unset, then the Cluster.ActiveSpec.ha-network-type field is ignored. If unset and the Cluster.ActiveSpec.ha-network-type field is unset, then the second NIC is assumed to be already configured.  If unset and the Cluster.ActiveSpec.ha-network field is set, then an error is reported. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter. | [optional] 
**ha_ip** | [**VcenterVchaIpSpec**](VcenterVchaIpSpec.md) |  | 


