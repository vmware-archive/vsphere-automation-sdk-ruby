# VSphereAutomation::VCenter::VcenterNsxNodeSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore** | **String** | Identifier for the datastore associated with the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore. | 
**hostname** | **String** | A fully qualified domain name (FQDN) for the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is currently required. It is optional for future development. | [optional] 
**management_ip_address** | **String** | IP address for the interface on the management network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**name** | **String** | Name of the virtual machine for the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is currently required. It is optional for future development. | [optional] 
**password** | **String** | Password of the virtual machine for the NSX Edge node. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. This field is currently required. It is optional for future development. | [optional] 


