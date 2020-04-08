# VSphereAutomation::VCenter::VcenterLcmVcInventory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cluster_path** | **String** | Full path to the cluster. Format: /{datacenter folder}/{datacenter name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path | [optional] 
**datastore_cluster_name** | **String** | The datastore cluster on which to store the files of the appliance. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #datastore_name and #datastore_cluster_name | [optional] 
**datastore_name** | **String** | The datastore on which to store the files of the appliance. This value has to be either a specific datastore name, or a specific datastore in a datastore cluster. The datastore must be accessible from the ESX host and must have at least 25 GB of free space. Otherwise, the new appliance might not power on. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #datastore_name and #datastore_cluster_name | [optional] 
**host_path** | **String** |  | [optional] 
**network_name** | **String** | Name of the network. e.g. VM Network. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**resource_pool_path** | **String** | Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host name}/{cluster_name}/Resources/{resource pool}. e.g: Your Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource Pool. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path | [optional] 
**vm_folder_path** | **String** | Path of the VM folder. VM folder must be visible by the Data Center of the compute resourceFormat:{vm_folder1}/{vm_folder2}e.g.:&#39;VM Folder 0/VM Folder1&#39;. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path | [optional] 


