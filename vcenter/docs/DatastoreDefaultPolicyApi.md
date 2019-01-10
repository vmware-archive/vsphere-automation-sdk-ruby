# VSphereAutomation::VCenter::DatastoreDefaultPolicyApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](DatastoreDefaultPolicyApi.md#get) | **GET** /vcenter/datastore/{datastore}/default-policy | Returns the identifier of the current default storage policy associated with the specified datastore.


# **get**
> VcenterDatastoreDefaultPolicyResult get(datastore)

Returns the identifier of the current default storage policy associated with the specified datastore.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::DatastoreDefaultPolicyApi.new
datastore = 'datastore_example' # String | Identifier of the datastore for which the default policy is requested. The parameter must be an identifier for the resource type: Datastore.

begin
  #Returns the identifier of the current default storage policy associated with the specified datastore.
  result = api_instance.get(datastore)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling DatastoreDefaultPolicyApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datastore** | **String**| Identifier of the datastore for which the default policy is requested. The parameter must be an identifier for the resource type: Datastore. | 

### Return type

[**VcenterDatastoreDefaultPolicyResult**](VcenterDatastoreDefaultPolicyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



