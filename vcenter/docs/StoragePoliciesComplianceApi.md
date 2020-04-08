# VSphereAutomation::VCenter::StoragePoliciesComplianceApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](StoragePoliciesComplianceApi.md#list) | **GET** /rest/vcenter/storage/policies/entities/compliance | Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.


# **list**
> VcenterStoragePoliciesComplianceListResp list(opts)

Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.

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

[**VcenterStoragePoliciesComplianceListResp**](VcenterStoragePoliciesComplianceListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



