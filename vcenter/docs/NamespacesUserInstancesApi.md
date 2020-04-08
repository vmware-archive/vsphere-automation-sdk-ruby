# VSphereAutomation::VCenter::NamespacesUserInstancesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](NamespacesUserInstancesApi.md#list) | **GET** /api/vcenter/namespaces-user/namespaces | Returns namespaces that user making the call is authorized to access.


# **list**
> Array&lt;VcenterNamespacesUserInstancesSummary&gt; list

Returns namespaces that user making the call is authorized to access.

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

api_instance = VSphereAutomation::VCenter::NamespacesUserInstancesApi.new

begin
  #Returns namespaces that user making the call is authorized to access.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespacesUserInstancesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VcenterNamespacesUserInstancesSummary&gt;**](VcenterNamespacesUserInstancesSummary.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



