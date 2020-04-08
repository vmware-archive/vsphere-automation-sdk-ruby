# VSphereAutomation::VCenter::NamespaceManagementHostsConfigApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](NamespaceManagementHostsConfigApi.md#get) | **GET** /api/vcenter/namespace-management/capability | Returns support and licensing information about hosts under a VC.


# **get**
> VcenterNamespaceManagementHostsConfigInfo get

Returns support and licensing information about hosts under a VC.

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

api_instance = VSphereAutomation::VCenter::NamespaceManagementHostsConfigApi.new

begin
  #Returns support and licensing information about hosts under a VC.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NamespaceManagementHostsConfigApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterNamespaceManagementHostsConfigInfo**](VcenterNamespaceManagementHostsConfigInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



