# VSphereAutomation::Appliance::AccessShellApi

All URIs are relative to *https://&lt;vcenter&gt;/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](AccessShellApi.md#get) | **GET** /appliance/access/shell | Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
[**set**](AccessShellApi.md#set) | **PUT** /appliance/access/shell | Set enabled state of BASH, that is, access to BASH from within the controlled CLI.


# **get**
> ApplianceAccessShellResult get

Get enabled state of BASH, that is, access to BASH from within the controlled CLI.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessShellApi.new

begin
  #Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
  result = api_instance.get
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessShellApi->get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApplianceAccessShellResult**](ApplianceAccessShellResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **set**
> set(appliance_access_shell_set)

Set enabled state of BASH, that is, access to BASH from within the controlled CLI.

### Example
```ruby
# load the gem
require 'vsphere-automation-appliance'

api_instance = VSphereAutomation::Appliance::AccessShellApi.new
appliance_access_shell_set = VSphereAutomation::ApplianceAccessShellSet.new # ApplianceAccessShellSet | 

begin
  #Set enabled state of BASH, that is, access to BASH from within the controlled CLI.
  api_instance.set(appliance_access_shell_set)
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling AccessShellApi->set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appliance_access_shell_set** | [**ApplianceAccessShellSet**](ApplianceAccessShellSet.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



