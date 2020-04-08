# VSphereAutomation::VCenter::VcenterDatastoreInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessible** | **Boolean** | Whether or not this datastore is accessible. | 
**free_space** | **Integer** | Available space of this datastore, in bytes.   The server periodically updates this value.  This field will be unset if the available space of this datastore is not known. | [optional] 
**multiple_host_access** | **Boolean** | Whether or not ore than one host in the datacenter has been configured with access to the datastore. | 
**name** | **String** | Name of the datastore. | 
**thin_provisioning_supported** | **Boolean** | Whether or not the datastore supports thin provisioning on a per file basis. When thin provisioning is used, backing storage is lazily allocated. | 
**type** | [**VcenterDatastoreType**](VcenterDatastoreType.md) |  | 


