# VSphereAutomation::VCenter::VmwportalAuthenticationApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VmwportalAuthenticationApi.md#create) | **POST** /api/vcenter/vmwportal/authentication | Create API authenticates the user on the my.vmware.com portal using the username password passed in the spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **create**
> create(opts)

Create API authenticates the user on the my.vmware.com portal using the username password passed in the spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::VmwportalAuthenticationApi.new
opts = {
  request_body: VCenter::VcenterVmwportalAuthenticationCreateSpec.new # VcenterVmwportalAuthenticationCreateSpec | 
}

begin
  #Create API authenticates the user on the my.vmware.com portal using the username password passed in the spec. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  api_instance.create(opts)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling VmwportalAuthenticationApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | **VcenterVmwportalAuthenticationCreateSpec**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



