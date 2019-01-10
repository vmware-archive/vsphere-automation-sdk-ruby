# VSphereAutomation::Appliance::UpdateStagedApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](UpdateStagedApi.md#delete) | **DELETE** /appliance/update/staged | Deletes the staged update
[**get**](UpdateStagedApi.md#get) | **GET** /appliance/update/staged | Gets the current status of the staged update


# **delete**
> delete

Deletes the staged update

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdateStagedApi.new

begin
  #Deletes the staged update
  api_instance.delete
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdateStagedApi->delete: #{e}"
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
> ApplianceUpdateStagedResult get

Gets the current status of the staged update

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::UpdateStagedApi.new

begin
  #Gets the current status of the staged update
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling UpdateStagedApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceUpdateStagedResult**](ApplianceUpdateStagedResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



