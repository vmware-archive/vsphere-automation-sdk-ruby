# VSphereAutomation::VCenter::InventoryDatastoreApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](InventoryDatastoreApi.md#find) | **POST** /com/vmware/vcenter/inventory/datastore?~action&#x3D;find | Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.


# **find**
> VcenterInventoryDatastoreFindResult find(vcenter_inventory_datastore_find)

Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::InventoryDatastoreApi.new
vcenter_inventory_datastore_find = VSphereAutomation::VcenterInventoryDatastoreFind.new # VcenterInventoryDatastoreFind | 

begin
  #Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.
  result = api_instance.find(vcenter_inventory_datastore_find)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InventoryDatastoreApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_inventory_datastore_find** | [**VcenterInventoryDatastoreFind**](VcenterInventoryDatastoreFind.md)|  | 

### Return type

[**VcenterInventoryDatastoreFindResult**](VcenterInventoryDatastoreFindResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



