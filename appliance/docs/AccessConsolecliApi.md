# VSphereAutomation::Appliance::AccessConsolecliApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessConsolecliApi.md#get) | **GET** /appliance/access/consolecli | Get enabled state of the console-based controlled CLI (TTY1).
[**set**](AccessConsolecliApi.md#set) | **PUT** /appliance/access/consolecli | Set enabled state of the console-based controlled CLI (TTY1).


# **get**
> ApplianceAccessConsolecliResult get

Get enabled state of the console-based controlled CLI (TTY1).

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new

begin
  #Get enabled state of the console-based controlled CLI (TTY1).
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessConsolecliApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessConsolecliResult**](ApplianceAccessConsolecliResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_access_consolecli_set)

Set enabled state of the console-based controlled CLI (TTY1).

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessConsolecliApi.new
appliance_access_consolecli_set = VSphereAutomation::ApplianceAccessConsolecliSet.new # ApplianceAccessConsolecliSet | 

begin
  #Set enabled state of the console-based controlled CLI (TTY1).
  api_instance.set(appliance_access_consolecli_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessConsolecliApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_access_consolecli_set** | [**ApplianceAccessConsolecliSet**](ApplianceAccessConsolecliSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



