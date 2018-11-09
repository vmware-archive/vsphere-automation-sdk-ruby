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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



