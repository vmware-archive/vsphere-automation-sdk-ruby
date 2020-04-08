# VSphereAutomation::VCenter::HlmSddcsApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](HlmSddcsApi.md#list) | **GET** /rest/vcenter/hlm/sddcs | Lists all Sddcs that are under the same organization as the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> VcenterHlmSddcsListResp list(filter_only_available_to_add)

Lists all Sddcs that are under the same organization as the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::HlmSddcsApi.new
filter_only_available_to_add = true # Boolean | Whether or not to filter results based on if the sddc is available to add to the community. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

begin
  #Lists all Sddcs that are under the same organization as the local node. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list(filter_only_available_to_add)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HlmSddcsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_only_available_to_add** | **Boolean**| Whether or not to filter results based on if the sddc is available to add to the community. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 

### Return type

[**VcenterHlmSddcsListResp**](VcenterHlmSddcsListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



