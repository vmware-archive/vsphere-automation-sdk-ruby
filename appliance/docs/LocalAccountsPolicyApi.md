# VSphereAutomation::Appliance::LocalAccountsPolicyApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](LocalAccountsPolicyApi.md#get) | **GET** /appliance/local-accounts/global-policy | Get the global password policy.
[**set**](LocalAccountsPolicyApi.md#set) | **PUT** /appliance/local-accounts/global-policy | Set the global password policy.


# **get**
> ApplianceLocalAccountsPolicyResult get

Get the global password policy.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::LocalAccountsPolicyApi.new

begin
  #Get the global password policy.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsPolicyApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceLocalAccountsPolicyResult**](ApplianceLocalAccountsPolicyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_local_accounts_policy_set)

Set the global password policy.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::LocalAccountsPolicyApi.new
appliance_local_accounts_policy_set = VSphereAutomation::ApplianceLocalAccountsPolicySet.new # ApplianceLocalAccountsPolicySet | 

begin
  #Set the global password policy.
  api_instance.set(appliance_local_accounts_policy_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LocalAccountsPolicyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_local_accounts_policy_set** | [**ApplianceLocalAccountsPolicySet**](ApplianceLocalAccountsPolicySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



