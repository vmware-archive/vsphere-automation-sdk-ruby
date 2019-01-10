# VSphereAutomation::Appliance::HealthApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messages**](HealthApi.md#messages) | **GET** /appliance/health/{item}/messages | Get health messages.


# **messages**
> ApplianceHealthMessagesResult messages(item)

Get health messages.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::HealthApi.new
item = 'item_example' # String | ID of the data item

begin
  #Get health messages.
  result = api_instance.messages(item)
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling HealthApi->messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | **String**| ID of the data item | 

### Return type

[**ApplianceHealthMessagesResult**](ApplianceHealthMessagesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



