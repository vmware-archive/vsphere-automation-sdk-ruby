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
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



