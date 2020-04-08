# VSphereAutomation::VCenter::VchaVcCredentialsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](VchaVcCredentialsApi.md#validate) | **POST** /rest/vcenter/vcha/vc-credentials?action&#x3D;validate | Validates the credentials of the management vCenter server of the active node of a VCHA cluster.


# **validate**
> validate(request_body)

Validates the credentials of the management vCenter server of the active node of a VCHA cluster.

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

api_instance = VSphereAutomation::VCenter::VchaVcCredentialsApi.new
request_body = VCenter::VcenterVchaVcCredentialsValidate.new # VcenterVchaVcCredentialsValidate | 

begin
  #Validates the credentials of the management vCenter server of the active node of a VCHA cluster.
  api_instance.validate(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VchaVcCredentialsApi->validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterVchaVcCredentialsValidate**](VcenterVchaVcCredentialsValidate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



