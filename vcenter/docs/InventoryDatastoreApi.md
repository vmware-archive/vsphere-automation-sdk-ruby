# VSphereAutomation::VCenter::InventoryDatastoreApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](InventoryDatastoreApi.md#find) | **POST** /com/vmware/vcenter/inventory/datastore | Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.


# **find**
> VcenterInventoryDatastoreFindResult find(action, request_body)

Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.

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

api_instance = VSphereAutomation::VCenter::InventoryDatastoreApi.new
action = 'action_example' # String | ~action=find
request_body = VCenter::VcenterInventoryDatastoreFind.new # VcenterInventoryDatastoreFind | 

begin
  #Returns datastore information for the specified datastores. The key in the {@term result} {@term map} is the datastore identifier and the value in the {@term map} is the datastore information.
  result = api_instance.find(action, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling InventoryDatastoreApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **String**| ~action&#x3D;find | 
 **request_body** | [**VcenterInventoryDatastoreFind**](VcenterInventoryDatastoreFind.md)|  | 

### Return type

[**VcenterInventoryDatastoreFindResult**](VcenterInventoryDatastoreFindResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



