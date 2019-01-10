# VSphereAutomation::Appliance::UpdateApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](UpdateApi.md#cancel) | **POST** /appliance/update?action&#x3D;cancel | Request the cancellation the update operation that is currently in progress.
[**get**](UpdateApi.md#get) | **GET** /appliance/update | Gets the current status of the appliance update.


# **cancel**
> cancel

Request the cancellation the update operation that is currently in progress.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdateApi.new

begin
  #Request the cancellation the update operation that is currently in progress.
  api_instance.cancel
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdateApi->cancel: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> ApplianceUpdateResult get

Gets the current status of the appliance update.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdateApi.new

begin
  #Gets the current status of the appliance update.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdateApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceUpdateResult**](ApplianceUpdateResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



