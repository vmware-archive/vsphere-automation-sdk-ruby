# VSphereAutomation::VCenter::InventoryNetworkApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](InventoryNetworkApi.md#find) | **POST** /com/vmware/vcenter/inventory/network?~action&#x3D;find | Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.


# **find**
> VcenterInventoryNetworkFindResult find(request_body)

Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VCenter::InventoryNetworkApi.new
request_body = VCenter::VcenterInventoryNetworkFind.new # VcenterInventoryNetworkFind | 

begin
  #Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
  result = api_instance.find(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InventoryNetworkApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterInventoryNetworkFind**](VcenterInventoryNetworkFind.md)|  | 

### Return type

[**VcenterInventoryNetworkFindResult**](VcenterInventoryNetworkFindResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



