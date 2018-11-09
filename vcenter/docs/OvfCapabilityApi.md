# VSphereAutomation::VCenter::OvfCapabilityApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](OvfCapabilityApi.md#get) | **GET** /com/vmware/vcenter/ovf/capability/id:{server_guid} | Returns information about the capability of the given vCenter server.


# **get**
> VcenterOvfCapabilityResult get(server_guid)

Returns information about the capability of the given vCenter server.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::OvfCapabilityApi.new
server_guid = 'server_guid_example' # String | Target vCenter server GUID

begin
  #Returns information about the capability of the given vCenter server.
  result = api_instance.get(server_guid)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling OvfCapabilityApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_guid** | **String**| Target vCenter server GUID | 

### Return type

[**VcenterOvfCapabilityResult**](VcenterOvfCapabilityResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



