# VSphereAutomation::Appliance::AccessDcuiApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessDcuiApi.md#get) | **GET** /appliance/access/dcui | Get enabled state of Direct Console User Interface (DCUI TTY2).
[**set**](AccessDcuiApi.md#set) | **PUT** /appliance/access/dcui | Set enabled state of Direct Console User Interface (DCUI TTY2).


# **get**
> ApplianceAccessDcuiResult get

Get enabled state of Direct Console User Interface (DCUI TTY2).

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessDcuiApi.new

begin
  #Get enabled state of Direct Console User Interface (DCUI TTY2).
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessDcuiApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessDcuiResult**](ApplianceAccessDcuiResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_access_dcui_set)

Set enabled state of Direct Console User Interface (DCUI TTY2).

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessDcuiApi.new
appliance_access_dcui_set = VSphereAutomation::ApplianceAccessDcuiSet.new # ApplianceAccessDcuiSet | 

begin
  #Set enabled state of Direct Console User Interface (DCUI TTY2).
  api_instance.set(appliance_access_dcui_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessDcuiApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_access_dcui_set** | [**ApplianceAccessDcuiSet**](ApplianceAccessDcuiSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



