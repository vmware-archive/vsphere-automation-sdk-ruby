# VSphereAutomation::Appliance::UpdatePolicyApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](UpdatePolicyApi.md#get) | **GET** /appliance/update/policy | Gets the automatic update checking and staging policy.
[**set**](UpdatePolicyApi.md#set) | **PUT** /appliance/update/policy | Sets the automatic update checking and staging policy.


# **get**
> ApplianceUpdatePolicyResult get

Gets the automatic update checking and staging policy.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePolicyApi.new

begin
  #Gets the automatic update checking and staging policy.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePolicyApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceUpdatePolicyResult**](ApplianceUpdatePolicyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_update_policy_set)

Sets the automatic update checking and staging policy.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdatePolicyApi.new
appliance_update_policy_set = VSphereAutomation::ApplianceUpdatePolicySet.new # ApplianceUpdatePolicySet | 

begin
  #Sets the automatic update checking and staging policy.
  api_instance.set(appliance_update_policy_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePolicyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_update_policy_set** | [**ApplianceUpdatePolicySet**](ApplianceUpdatePolicySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



