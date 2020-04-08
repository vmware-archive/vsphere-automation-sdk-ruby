# VSphereAutomation::VCenter::SvcaccountmgmtPasswordApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change**](SvcaccountmgmtPasswordApi.md#change) | **POST** /rest/vcenter/svc-account-mgmt/password?action&#x3D;change | Change the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**reset**](SvcaccountmgmtPasswordApi.md#reset) | **POST** /rest/vcenter/svc-account-mgmt/password?action&#x3D;reset | Reset the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **change**
> VcenterSvcaccountmgmtPasswordChangeResp change(request_body)

Change the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SvcaccountmgmtPasswordApi.new
request_body = VCenter::VcenterSvcaccountmgmtPasswordChange.new # VcenterSvcaccountmgmtPasswordChange | 

begin
  #Change the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.change(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SvcaccountmgmtPasswordApi->change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSvcaccountmgmtPasswordChange**](VcenterSvcaccountmgmtPasswordChange.md)|  | 

### Return type

[**VcenterSvcaccountmgmtPasswordChangeResp**](VcenterSvcaccountmgmtPasswordChangeResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **reset**
> VcenterSvcaccountmgmtPasswordResetResp reset(request_body)

Reset the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SvcaccountmgmtPasswordApi.new
request_body = VCenter::VcenterSvcaccountmgmtPasswordReset.new # VcenterSvcaccountmgmtPasswordReset | 

begin
  #Reset the service account password Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.reset(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SvcaccountmgmtPasswordApi->reset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSvcaccountmgmtPasswordReset**](VcenterSvcaccountmgmtPasswordReset.md)|  | 

### Return type

[**VcenterSvcaccountmgmtPasswordResetResp**](VcenterSvcaccountmgmtPasswordResetResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



