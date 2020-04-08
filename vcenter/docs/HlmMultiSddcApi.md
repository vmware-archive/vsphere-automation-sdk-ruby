# VSphereAutomation::VCenter::HlmMultiSddcApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**set**](HlmMultiSddcApi.md#set) | **PUT** /rest/vcenter/hlm/multiSddc | Sets the Multi SDDC feature to enabled on the appliance. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **set**
> set(request_body)

Sets the Multi SDDC feature to enabled on the appliance. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmMultiSddcApi.new
request_body = VCenter::VcenterHlmMultiSddcSet.new # VcenterHlmMultiSddcSet | 

begin
  #Sets the Multi SDDC feature to enabled on the appliance. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmMultiSddcApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterHlmMultiSddcSet**](VcenterHlmMultiSddcSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



