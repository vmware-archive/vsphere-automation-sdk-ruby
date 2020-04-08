# VSphereAutomation::VCenter::StoragePoliciesApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_compatibility**](StoragePoliciesApi.md#check_compatibility) | **POST** /rest/vcenter/storage/policies/{policy}?action&#x3D;check-compatibility | Returns datastore compatibility summary about a specific storage policy.
[**list**](StoragePoliciesApi.md#list) | **GET** /rest/vcenter/storage/policies | Returns information about at most 1024 visible (subject to permission checks) storage solicies availabe in vCenter. These storage policies can be used for provisioning virtual machines or disks.


# **check_compatibility**
> VcenterStoragePoliciesCheckCompatibilityResp check_compatibility(policy, request_body)

Returns datastore compatibility summary about a specific storage policy.

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

api_instance = VSphereAutomation::VCenter::StoragePoliciesApi.new
policy = 'policy_example' # String | The storage policy identifier The parameter must be an identifier for the resource type: vcenter.StoragePolicy.
request_body = VCenter::VcenterStoragePoliciesCheckCompatibility.new # VcenterStoragePoliciesCheckCompatibility | 

begin
  #Returns datastore compatibility summary about a specific storage policy.
  result = api_instance.check_compatibility(policy, request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling StoragePoliciesApi->check_compatibility: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy** | **String**| The storage policy identifier The parameter must be an identifier for the resource type: vcenter.StoragePolicy. | 
 **request_body** | [**VcenterStoragePoliciesCheckCompatibility**](VcenterStoragePoliciesCheckCompatibility.md)|  | 

### Return type

[**VcenterStoragePoliciesCheckCompatibilityResp**](VcenterStoragePoliciesCheckCompatibilityResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list**
> VcenterStoragePoliciesListResp list(opts)

Returns information about at most 1024 visible (subject to permission checks) storage solicies availabe in vCenter. These storage policies can be used for provisioning virtual machines or disks.

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

api_instance = VSphereAutomation::VCenter::StoragePoliciesApi.new
opts = {
  filter_policies: ['filter_policies_example'] # Array<String> | Identifiers of storage policies that can match the filter. If unset or empty, storage policies with any identifiers match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.StoragePolicy.
}

begin
  #Returns information about at most 1024 visible (subject to permission checks) storage solicies availabe in vCenter. These storage policies can be used for provisioning virtual machines or disks.
  result = api_instance.list(opts)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling StoragePoliciesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_policies** | [**Array&lt;String&gt;**](String.md)| Identifiers of storage policies that can match the filter. If unset or empty, storage policies with any identifiers match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vcenter.StoragePolicy. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vcenter.StoragePolicy. | [optional] 

### Return type

[**VcenterStoragePoliciesListResp**](VcenterStoragePoliciesListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



