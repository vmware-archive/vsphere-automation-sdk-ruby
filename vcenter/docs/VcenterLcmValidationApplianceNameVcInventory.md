# VSphereAutomation::VCenter::VcenterLcmValidationApplianceNameVcInventory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cluster_path** | **String** | Full path to the cluster. Format: /{datacenter folder}/{datacenter name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Cluster. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path | [optional] 
**host_path** | **String** | Full path to an ESX host. Format: /{datacenter folder}/{datacenter name}/host/{host name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Host. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path | [optional] 
**resource_pool_path** | **String** | Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host name}/{cluster_name}/Resources/{resource pool}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource Pool. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. Mutually exclusive between #resource_pool_path, #cluster_path, and #host_path | [optional] 
**vm_folder_path** | **String** |  | [optional] 


