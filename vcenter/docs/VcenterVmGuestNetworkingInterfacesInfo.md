# VSphereAutomation::VCenter::VcenterVmGuestNetworkingInterfacesInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dns** | [**VcenterVmGuestDnsConfigInfo**](VcenterVmGuestDnsConfigInfo.md) |  | [optional] 
**dns_values** | [**VcenterVmGuestDnsAssignedValues**](VcenterVmGuestDnsAssignedValues.md) |  | [optional] 
**ip** | [**VcenterVmGuestNetworkingInterfacesIpConfigInfo**](VcenterVmGuestNetworkingInterfacesIpConfigInfo.md) |  | [optional] 
**mac_address** | **String** | MAC address of the adapter. If unset then not supported by the Guest OS. | [optional] 
**nic** | **String** | Link to the corresponding virtual device. If unset then the interface is not backed by a virtual device. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vcenter.vm.hardware.Ethernet. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vcenter.vm.hardware.Ethernet. | [optional] 
**wins_servers** | **Array&lt;String&gt;** | The IP addresses of any WINS name servers for the adapter. If unset then not supported by the Guest OS. | [optional] 


