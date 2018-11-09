# VSphereAutomation::VCenter::StoragePoliciesComplianceApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](StoragePoliciesComplianceApi.md#list) | **GET** /vcenter/storage/policies/entities/compliance | Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.


# **list**
> VcenterStoragePoliciesComplianceListResult list(opts)

Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.

### Example
```ruby
# load the gem
require 'vsphere-automation-vcenter'

api_instance = VSphereAutomation::VCenter::StoragePoliciesComplianceApi.new
opts = {
  filter_status: ['filter_status_example'] # Array<String> | Compliance Status that a virtual machine must have to match the filter.
}

begin
  #Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling StoragePoliciesComplianceApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_status** | [**Array&lt;String&gt;**](String.md)| Compliance Status that a virtual machine must have to match the filter. | [optional] 

### Return type

[**VcenterStoragePoliciesComplianceListResult**](VcenterStoragePoliciesComplianceListResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



