# VSphereAutomation::VCenter::VcenterLcmEsxInventory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datastore_name** | **String** | The datastore on which to store the files of the appliance. This value has to be either a specific datastore name, or a specific datastore in a datastore cluster. The datastore must be accessible from the ESX host and must have at least 25 GB of free space. Otherwise, the new appliance might not power on. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**network_name** | **String** | The network of the ESX host to which the new appliance should connect. Omit this parameter if the ESX host has one network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, defaults to VM Network | [optional] 
**resource_pool_path** | **String** | The path to the resource pool on the ESX host in which the appliance will be deployed. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Not applicable when not in resource pool | [optional] 


