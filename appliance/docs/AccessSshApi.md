# VSphereAutomation::Appliance::AccessSshApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessSshApi.md#get) | **GET** /appliance/access/ssh | Get enabled state of the SSH-based controlled CLI.
[**set**](AccessSshApi.md#set) | **PUT** /appliance/access/ssh | Set enabled state of the SSH-based controlled CLI.


# **get**
> ApplianceAccessSshResult get

Get enabled state of the SSH-based controlled CLI.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessSshApi.new

begin
  #Get enabled state of the SSH-based controlled CLI.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessSshApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessSshResult**](ApplianceAccessSshResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_access_ssh_set)

Set enabled state of the SSH-based controlled CLI.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessSshApi.new
appliance_access_ssh_set = VSphereAutomation::ApplianceAccessSshSet.new # ApplianceAccessSshSet | 

begin
  #Set enabled state of the SSH-based controlled CLI.
  api_instance.set(appliance_access_ssh_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessSshApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_access_ssh_set** | [**ApplianceAccessSshSet**](ApplianceAccessSshSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



