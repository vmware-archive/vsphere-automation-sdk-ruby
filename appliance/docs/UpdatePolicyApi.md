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
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set**
> set(request_body)

Sets the automatic update checking and staging policy.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::Appliance::UpdatePolicyApi.new
request_body = Appliance::ApplianceUpdatePolicySet.new # ApplianceUpdatePolicySet | 

begin
  #Sets the automatic update checking and staging policy.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdatePolicyApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceUpdatePolicySet**](ApplianceUpdatePolicySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



