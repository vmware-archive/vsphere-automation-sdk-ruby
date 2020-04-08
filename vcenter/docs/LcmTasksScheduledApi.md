# VSphereAutomation::VCenter::LcmTasksScheduledApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](LcmTasksScheduledApi.md#list) | **GET** /rest/vcenter/lcm/tasks/scheduled | Retrieves information of the tasks that are scheduled to be executed in the future. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> VcenterLcmTasksScheduledListResp list

Retrieves information of the tasks that are scheduled to be executed in the future. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

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

api_instance = VSphereAutomation::VCenter::LcmTasksScheduledApi.new

begin
  #Retrieves information of the tasks that are scheduled to be executed in the future. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LcmTasksScheduledApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VcenterLcmTasksScheduledListResp**](VcenterLcmTasksScheduledListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



