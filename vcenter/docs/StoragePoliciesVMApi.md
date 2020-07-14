# VSphereAutomation::VCenter::StoragePoliciesVMApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](StoragePoliciesVMApi.md#list) | **GET** /vcenter/storage/policies/{policy}/vm | Returns information about the virtual machines and/or their virtual disks that are associated with the given storage policy.


# **list**
> VcenterStoragePoliciesVMListResult list(policy)

Returns information about the virtual machines and/or their virtual disks that are associated with the given storage policy.

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

api_instance = VSphereAutomation::VCenter::StoragePoliciesVMApi.new
policy = 'policy_example' # String | storage policy identifier. The parameter must be an identifier for the resource type: vcenter.StoragePolicy.

begin
  #Returns information about the virtual machines and/or their virtual disks that are associated with the given storage policy.
  result = api_instance.list(policy)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling StoragePoliciesVMApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy** | **String**| storage policy identifier. The parameter must be an identifier for the resource type: vcenter.StoragePolicy. | 

### Return type

[**VcenterStoragePoliciesVMListResult**](VcenterStoragePoliciesVMListResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



