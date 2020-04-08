# VSphereAutomation::VCenter::LcmStatusManagerApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](LcmStatusManagerApi.md#check) | **GET** /rest/vcenter/lcm/appliance-status | Retrieves the status of the appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  


# **check**
> VcenterLcmStatusManagerCheckResp check

Retrieves the status of the appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  

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

api_instance = VSphereAutomation::VCenter::LcmStatusManagerApi.new

begin
  #Retrieves the status of the appliance. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  result = api_instance.check
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmStatusManagerApi->check: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterLcmStatusManagerCheckResp**](VcenterLcmStatusManagerCheckResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



