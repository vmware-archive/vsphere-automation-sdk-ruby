# VSphereAutomation::VCenter::VcenterNsxEdgeClustersUplinkNodeInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | Identifier of the datastore associated with the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. | 
**datastore_name** | **String** | Name of the the datastore associated with the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when name of EdgeClusters.NodeInfo.datastore could not be fetched. | [optional] 
**hostname** | **String** | A fully qualified domain name (FQDN) for the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**id** | **String** | ID of the virtual machine for the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. To be unset when ID is not present. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will be an identifier for the resource type: VirtualMachine. | [optional] 
**management_ip_address** | **String** | IP address of the interface on the management network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**name** | **String** | Name of the virtual machine for the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**uplink_ip_address** | **String** | IP address of the interface on the uplink network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 


