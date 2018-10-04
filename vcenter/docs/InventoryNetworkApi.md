# VSphereAutomation::VCenter::InventoryNetworkApi

All URIs are relative to *http:///rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](InventoryNetworkApi.md#find) | **POST** /com/vmware/vcenter/inventory/network?~action&#x3D;find | Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.


# **find**
> VcenterInventoryNetworkFindResult find(opts)

Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::InventoryNetworkApi.new
opts = {
  vcenter_inventory_network_find: VSphereAutomation::VcenterInventoryNetworkFind.new # VcenterInventoryNetworkFind | 
}

begin
  #Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
  result = api_instance.find(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InventoryNetworkApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vcenter_inventory_network_find** | [**VcenterInventoryNetworkFind**](VcenterInventoryNetworkFind.md)|  | [optional] 

### Return type

[**VcenterInventoryNetworkFindResult**](VcenterInventoryNetworkFindResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



