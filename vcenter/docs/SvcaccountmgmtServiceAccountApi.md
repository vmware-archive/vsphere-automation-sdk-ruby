# VSphereAutomation::VCenter::SvcaccountmgmtServiceAccountApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SvcaccountmgmtServiceAccountApi.md#create) | **POST** /rest/vcenter/svc-account-mgmt/service-account?action&#x3D;create | Create a service account with the input configuration parameters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
[**delete**](SvcaccountmgmtServiceAccountApi.md#delete) | **POST** /rest/vcenter/svc-account-mgmt/service-account?action&#x3D;delete | Delete the service account with the input name. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> VcenterSvcaccountmgmtServiceAccountCreateResp create(request_body)

Create a service account with the input configuration parameters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SvcaccountmgmtServiceAccountApi.new
request_body = VCenter::VcenterSvcaccountmgmtServiceAccountCreate.new # VcenterSvcaccountmgmtServiceAccountCreate | 

begin
  #Create a service account with the input configuration parameters. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.create(request_body)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SvcaccountmgmtServiceAccountApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSvcaccountmgmtServiceAccountCreate**](VcenterSvcaccountmgmtServiceAccountCreate.md)|  | 

### Return type

[**VcenterSvcaccountmgmtServiceAccountCreateResp**](VcenterSvcaccountmgmtServiceAccountCreateResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(request_body)

Delete the service account with the input name. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::SvcaccountmgmtServiceAccountApi.new
request_body = VCenter::VcenterSvcaccountmgmtServiceAccountDelete.new # VcenterSvcaccountmgmtServiceAccountDelete | 

begin
  #Delete the service account with the input name. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.delete(request_body)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling SvcaccountmgmtServiceAccountApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**VcenterSvcaccountmgmtServiceAccountDelete**](VcenterSvcaccountmgmtServiceAccountDelete.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



