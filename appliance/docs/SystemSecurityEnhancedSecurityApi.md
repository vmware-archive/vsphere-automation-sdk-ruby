# VSphereAutomation::Appliance::SystemSecurityEnhancedSecurityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**set**](SystemSecurityEnhancedSecurityApi.md#set) | **PUT** /rest/appliance/system/enhanced-security | Enable/Disable advanced security (IL4/IL5).


# **set**
> set(request_body)

Enable/Disable advanced security (IL4/IL5).

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

api_instance = VSphereAutomation::Appliance::SystemSecurityEnhancedSecurityApi.new
request_body = Appliance::ApplianceSystemSecurityEnhancedSecuritySet.new # ApplianceSystemSecurityEnhancedSecuritySet | 

begin
  #Enable/Disable advanced security (IL4/IL5).
  api_instance.set(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SystemSecurityEnhancedSecurityApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ApplianceSystemSecurityEnhancedSecuritySet**](ApplianceSystemSecurityEnhancedSecuritySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



