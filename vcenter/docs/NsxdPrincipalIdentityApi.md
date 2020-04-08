# VSphereAutomation::VCenter::NsxdPrincipalIdentityApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](NsxdPrincipalIdentityApi.md#create) | **POST** /api/vcenter/nsxd/principal-identity/create | Create the Principal Identity within configured NSX environment.


# **create**
> create(opts)

Create the Principal Identity within configured NSX environment.

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

api_instance = VSphereAutomation::VCenter::NsxdPrincipalIdentityApi.new
opts = {
  request_body: VCenter::VcenterNsxdPrincipalIdentitySpec.new # VcenterNsxdPrincipalIdentitySpec | 
}

begin
  #Create the Principal Identity within configured NSX environment.
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling NsxdPrincipalIdentityApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterNsxdPrincipalIdentitySpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



